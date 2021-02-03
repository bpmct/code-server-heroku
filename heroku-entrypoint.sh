# Clone the git repo, if it exists
mkdir /home/coder/project
[ -z "${GIT_REPO}" ] && echo "No GIT_REPO specified"; git clone $GIT_REPO /home/coder/project

# Now we can run code-server with the default entrypoint
/usr/bin/entrypoint.sh --bind-addr 0.0.0.0:8080 $1:/home/coder/project