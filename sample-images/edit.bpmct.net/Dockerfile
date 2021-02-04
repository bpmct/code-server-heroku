FROM bencdr/code-server-heroku:latest

USER root

# Install NodeJS 13.x
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs

# Install tmux
RUN apt-get install -y tmux

USER coder

# Install linter
RUN code-server --install-extension esbenp.prettier-vscode --extensions-dir /home/coder/.local/share/code-server/extensions

# Install GitLens
RUN code-server --install-extension eamodio.gitlens --extensions-dir /home/coder/.local/share/code-server/extensions

# Clone repo and add dependencies
RUN git clone https://github.com/bpmct/bpmct.net.git
# Install dependencies 
RUN cd bpmct.net && npm install
# Attempt to build (saves time on first `gatsby develop`) allow failures 
RUN npx gatsby build; exit 0

# Apply new VS Code settings
COPY settings.json .local/share/code-server/User/settings.json

# Configure git
RUN git config --global user.name Ben Potter
RUN git config --global user.email me@bpmct.net

# Start code-server into this folder instead
ENTRYPOINT ["/usr/bin/heroku-entrypoint.sh", "/home/coder/bpmct.net"]