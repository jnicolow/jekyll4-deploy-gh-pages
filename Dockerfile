# FROM ruby:2.6.6
# gem update --system 3.2.3
FROM ruby:3.2.3
# install a modern bundler version
RUN gem install -y bundler # y tag so that it does not break on installing a too knew bundler version
# RUN gem install bundler -v 2.4.22


ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
