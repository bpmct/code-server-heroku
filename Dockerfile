FROM codercom/code-server:latest

# Use bash shell
RUN chsh -s /bin/bash
ENV SHELL=/bin/bash

# Install dependencies:
# RUN sudo apt-get install -y nano build-essential ...

ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "."]