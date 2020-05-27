FROM ruby:2.7.0

WORKDIR /usr/src/app

RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y yarn

RUN yarn --version
RUN yarn install --check-files

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . ./

EXPOSE 3000

CMD ["rails", "server"]
