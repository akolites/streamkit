# Stream Kit
a repository to deploy streaming kit for live mass on remote (and local) server

### Heroku 
You can use Heroku to deploy remotely with free tier.

1. Set up Heroku account
2. Run :

```bash
# optional: build nodecg/nodecg on own
docker build -t nodecg/nodecg https://github.com/otivedani/nodecg.git#fix-utils

# set up credentials
heroku login
heroku container:login

# create app, choose unique name
export APPNAME=akolites-streamkit
heroku create $APPNAME

export BUILDAH_FORMAT=docker # use this line if using podman
heroku container:push web -a $APPNAME
heroku container:release web -a $APPNAME

# open Heroku dashboard, use free dyno (or preferred)
# will be available https://akolites-streamkit.herokuapp.com/
```


### Local
Read [NodeCG Documentation](https://www.nodecg.dev/docs/installing/),

For usage with Docker, this repo could be a reference.


### Static
visit : 
- [https://akolites.github.io/lowerthird/dashboard/](https://akolites.github.io/lowerthird/dashboard/) to generate links


