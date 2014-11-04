FROM ruby
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /nomad
WORKDIR /nomad
ADD Gemfile /nomad/Gemfile
RUN bundle install
ADD . /nomad
