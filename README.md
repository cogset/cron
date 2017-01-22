## Cron in Docker
[![build status badge](https://travis-ci.org/youmingdot/docker-cron.svg)](https://travis-ci.org/youmingdot/docker-cron)
[![layers badge](https://images.microbadger.com/badges/image/youmingdot/cron.svg)](https://microbadger.com/images/youmingdot/cron)
### Supported tags and respective Dockerfile links

+ `latest` [(2.5/Dockerfile)](https://github.com/youmingdot/docker-cron/blob/master/cron/Dockerfile)

------
### Author
+ You Ming (youming@funcuter.org)

------
### Usage

##### Run with a cron rule
```
$ docker run -d --name cron youmingdot/cron:latest -a "* * * * * root echo \"hello\" >> /var/log/cron.log"
```
