🔴 This repo is archived. Check out [deploy-code-server](https://github.com/bpmct/deploy-code-server)


# code-server-heroku

Launch automatic cloud dev workspaces ☁️

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/bpmct/code-server-heroku/tree/main)

## Why develop on a Heroku dyno?

- Code from any device, even an iPad or Chromebook
- Create a new workspace for each project, with the exact config necessary
- Run unlimited dynos for free, up to 1000 total hours per month. They shut down after 30m of inactivity.

⚠️: Heroku does not have a persistant filesystem. Make sure you are using a git and pushing regularily.

## Ways to get started:
- Deploy via the 1-click deploy (only base image for now 😔)
- Fork this repo, extend the image.
- Deploy one of the [sample-images/](sample-images/) with Heroku's [container registry tutorial](https://devcenter.heroku.com/articles/container-registry-and-runtime)

Extending:
```Dockerfile
FROM bencdr/code-server-heroku

# Install your dependencies
RUN apt-get install -y ...
```

## Todo:

- [x] Create base image
- [ ] Create sample images
- [ ] Create GitHub action to build
- [ ] Simplify image creation/deployment process
