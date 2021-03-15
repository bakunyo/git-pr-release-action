FROM ruby:3.0.0-alpine3.13

RUN apk --update --no-cache upgrade && \
    apk --no-cache add git tzdata && \
    gem install --no-document git-pr-release

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
