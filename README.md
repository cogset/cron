## Cron in Docker
[![build status badge](https://travis-ci.org/cogset/cron.svg)](https://travis-ci.org/cogset/cron)
[![layers badge](https://images.microbadger.com/badges/image/cogset/cron.svg)](https://microbadger.com/images/cogset/cron)
### Supported tags and respective Dockerfile links

+ `latest` [(cron/Dockerfile)](https://github.com/cogset/cron/blob/master/cron/Dockerfile)

------
### Author
+ You Ming (youming@funcuter.org)

------
### Usage

##### Run with a cron rule
```
$ docker run -d --name cron youmingdot/cron:latest -a "* * * * * root echo \"hello\" >> /var/log/cron.log"
```
