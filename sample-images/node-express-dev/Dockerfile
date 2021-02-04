FROM bencdr/code-server-heroku:latest

USER root

# Install NodeJS 12.x
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

USER coder

# Install linter
RUN code-server --install-extension esbenp.prettier-vscode --extensions-dir /home/coder/.local/share/code-server/extensions

# Clone repo and add dependencies
RUN git clone https://github.com/strongloop/express-example-app.git
RUN cd express-example-app && npm install

# Apply new VS Code settings
COPY settings.json .local/share/code-server/User/settings.json

# Start code-server into this folder instead
ENTRYPOINT ["/usr/bin/heroku-entrypoint.sh", "/home/coder/express-example-app"]