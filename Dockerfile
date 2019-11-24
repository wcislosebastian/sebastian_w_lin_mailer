FROM ruby:2.6.3

COPY . /mailer
WORKDIR /mailer

ENV RAILS_ENV production

RUN bundle install --deployment --without development test \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt install -y nodejs

