FROM ruby:2.6.6
RUN gem update --system 3.2.3
# FROM ruby:3.2.3
# install a modern bundler version
RUN gem install bundler 
RUN gem update bundler
# RUN gem install bundler -v 2.4.22


ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
