# Cron
# AUTHOR You Ming

FROM debian:jessie

MAINTAINER You Ming <youming@funcuter.org>

# Install
RUN apt-get update \
    && apt-get install -y --no-install-recommends cron \
    && rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["tail"]
