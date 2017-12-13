FROM ruby:2.4

RUN apt-get -qq update && \
    apt-get -y install bsdgames

RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app
COPY Gemfile.lock /usr/src/app

RUN gem install bundler && \
    bundle install --without development

COPY . /usr/src/app

CMD ["rackup"]
