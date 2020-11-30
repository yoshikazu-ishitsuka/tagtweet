FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  yarn \
  mariadb-client vim --no-install-recommends && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN gem install bundler
RUN bundle install
