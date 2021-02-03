FROM codercom/code-server:latest

# Install dependencies on server:
# RUN apt-get install -y 

# Apply VS Code settings
COPY settings.json .local/share/code-server/User/settings.json

# Clone a git project
RUN mkdir /home/coder/project
RUN [ -z "${GIT_REPO}" ] && git clone $GIT_REPO /home/coder/project; echo "No GIT_REPO specified"

# Use bash shell
ENV SHELL=/bin/bash
ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "/home/coder/project"]