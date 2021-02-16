# Deploy this to Heroku:

```sh
$ git clone https://github.com/bpmct/code-server-heroku
$ cd sample-images/node-express-dev
$ heroku container:login
$ heroku create [appname]
$ heroku config:set PASSWORD=[password] -a [appname]
$ heroku container:push web -a [appname]
$ heroku container:release web -a [appname]
```
S 
