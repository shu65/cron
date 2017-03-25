FROM ubuntu:16.04

# install via apt
USER root

RUN apt-get update && \
  apt-get install -y \
    cron && \
  rm -rf /var/lib/apt/lists/*

RUN touch /var/log/cron.log

COPY  start_cron.sh /root/
RUN chmod +x /root/start_cron.sh

# start cron
CMD /root/start_cron.sh
