# cron
This repository contains Dockerfile of cron.

# Usage
```
touch ./crontab
#edit ./crontab
$ docker run -d -v ${PWD}/crontab:/etc/crontab shu65/cron
```
