FROM codercom/code-server

# Install your dependencies here
RUN sudo apt-get update && sudo apt-get install -y python3

ENV USER=coder
WORKDIR /home/coder
ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "."]