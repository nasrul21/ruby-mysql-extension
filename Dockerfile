FROM ruby:3.0-alpine

RUN rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

RUN apk update \ 
    && apk add --no-cache mariadb-dev

ENTRYPOINT ["/bin/sh"]
