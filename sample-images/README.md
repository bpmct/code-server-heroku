# Deploy one of these to Heroku:

```sh
$ git clone https://github.com/bpmct/code-server-heroku
$ cd sample-images/[folder]
$ heroku container:login
$ heroku create [appname]
$ heroku config:set PASSWORD=[password] -a [appname]
$ heroku config:set GIT_REPO=[https://github.com/.../...] -a [appname]
$ heroku container:push web -a [appname]
$ heroku container:release web -a [appname]
```
Reference: [https://devcenter.heroku.com/articles/container-registry-and-runtime](https://devcenter.heroku.com/articles/container-registry-and-runtime)
