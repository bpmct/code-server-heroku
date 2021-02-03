FROM codercom/code-server:latest

# Install dependencies on server:
# RUN apt-get install -y 

# Apply VS Code settings
COPY settings.json .local/share/code-server/User/settings.json

RUN echo $GIT_REPO

# Clone a git project
RUN mkdir /home/coder/project
RUN [ -z "${GIT_REPO}" ] && echo "No GIT_REPO specified"; git clone $GIT_REPO /home/coder/project

# Use bash shell
ENV SHELL=/bin/bash
ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "/home/coder/project"]