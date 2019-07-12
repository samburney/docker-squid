FROM lsiobase/alpine:3.10

LABEL maintainer='Sam Burney <sburney@sifnt.net.au>'

RUN apk add --update \
    squid \
    && rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/* /root/.cache/pip

ADD ./docker/root/ /
