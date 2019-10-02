FROM ruby:2.6.1-alpine3.9

RUN apk add --no-cache git
RUN gem install git-pr-release

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]