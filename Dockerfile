FROM codercom/code-server:latest

# Install dependencies on server:
# RUN apt-get install -y 

# Apply VS Code settings
COPY settings.json .local/share/code-server/User

# Clone a git project
RUN mkdir /home/coder/project && cd /home/coder/project && if [[ -z "${GIT_REPO}" ]] ; then git clone $GIT_REPO /home/coder/project/. ; else echo "No $GIT_REPO config" ; fi

# Use bash shell
ENV SHELL=/bin/bash
ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "/home/coder/project"]