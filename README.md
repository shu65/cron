# cron
This repository contains Dockerfile of cron.

# Usage
```
$ make 
$ cp crontab.sample crontab
#edit ./crontab
$ docker run -d -v ${PWD}/crontab:/etc/crontab cron
```
