FROM ruby:2.6.5-alpine3.10

RUN apk add --no-cache git
RUN gem install git-pr-release

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]