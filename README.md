# code-server-heroku

Launch automatic cloud dev workspaces ☁️

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/bpmct/code-server-heroku/tree/main)

## Why develop on a Heroku dyno?

- Code from any device, even an iPad or Chromebook
- Create a new workspace for each project, with the exact config necessary
- Run unlimited dynos for free, up to 1000 total hours per month. They shut down after 30m of inactivity.

Note: Heroku does not have a persistant filesystem. Make sure you are using a git and pushing regularily.

## Ways to get started:


```Dockerfile
FROM bencdr/code-server-heroku

# Install your dependencies
RUN apt-get install -y ...
```

## Todo:

- [ ] Create base image
- [ ] Create sample images
- [ ] Create GitHub action to build
- [ ] Impliment code-server-controller app
