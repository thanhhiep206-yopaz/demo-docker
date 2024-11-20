ARG RUBY_VERSION=3.0.4

FROM ruby:${RUBY_VERSION}

RUN mkdir /app

WORKDIR /app

COPY . .

RUN apt-get update && \
    apt-get install build-essential -y --no-install-recommends \
    nodejs \
    libpq-dev

RUN bundle install

EXPOSE 3001
