FROM ruby:3.3.4

RUN apt-get update

WORKDIR /code-cracker

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock

RUN gem install bundler & bundle install

COPY . .

