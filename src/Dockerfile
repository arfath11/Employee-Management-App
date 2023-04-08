FROM ruby:3.0.5-alpine
RUN  apk update && \
    apk add --no-cache build-base ruby-dev ruby-bundler


RUN mkdir /app
WORKDIR /app 
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD . /app
CMD [ "bundle", "exec", "rails", "s", "-p","3000","-b", "0.0.0.0" ]
  