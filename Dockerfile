FROM codercom/code-server:latest

# Install dependencies:
# RUN sudo apt-get install -y nano build-essential ...

# Use bash shell
ENV SHELL=/bin/bash
ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "."]