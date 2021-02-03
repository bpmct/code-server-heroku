FROM codercom/code-server:latest

# Install dependencies

ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "."]