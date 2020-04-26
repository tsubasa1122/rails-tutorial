FROM ruby:2.7

RUN apt-get update -qq && apt-get install -y nodejs yarnpkg vim
RUN ln -s /usr/bin/yarnpkg /usr/bin/yarn

RUN mkdir /rails-tutorial
WORKDIR /rails-tutorial

COPY Gemfile /rails-tutorial/Gemfile
COPY Gemfile.lock /rails-tutorial/Gemfile.lock
RUN bundle install

COPY . /rails-tutorial

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
