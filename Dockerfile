FROM ruby:2.3.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs graphviz
RUN mkdir /api
WORKDIR /api
ADD Gemfile /api/Gemfile
ADD Gemfile.lock /api/Gemfile.lock
RUN bundle install
ADD . /api
CMD bin/rails s -p 3000 -b '0.0.0.0'
