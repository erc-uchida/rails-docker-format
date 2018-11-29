FROM ruby:2.4.3
ENV LANG C.UTF-8

RUN apt-get update -qq && \
    apt-get install -y build-essential nodejs && \
    rm -rf /var/lib/apt/lists/*

RUN gem install bundler

WORKDIR /tmp
ADD Gemfile .
ADD Gemfile.lock .
ENV BUNDLE_JOBS=4 \
    BUNDLE_PATH=/bundle
RUN bundle install

RUN mkdir -p /myapp
WORKDIR /myapp
ADD . /myapp
