#!/bin/sh
printenv | awk '{print "export " $1}' > /root/env.sh
chmod 644 /etc/crontab
chown root:root /etc/crontab
chmod -R 644 /etc/cron.d/*
chown -R root:root /etc/cron.d/*
service cron start
tail -f  /var/log/cron.log


