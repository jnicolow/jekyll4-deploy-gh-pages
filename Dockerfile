FROM ruby:2.6.6

# install a modern bundler version
RUN gem install -y bundler # y tag so that it does not break on installing a too knew bundler version

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
