FROM ruby:2.7

MAINTAINER Ilya Orekhov "il.orehov@hotmail.com"

RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client build-essential libpq-dev

ENV RAILS_ENV=production

RUN mkdir -p app/assets/config
RUN touch app/assets/config/manifest.js  
RUN echo "//= link_tree ../images //= link_directory ../javascripts .js //= link_directory ../stylesheets .css" > app/assets/config/manifest.js

RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-4.2.1.tar.gz"
RUN tar -xf redmine.tar.gz --strip-components=1
RUN rm redmine.tar.gz files/delete.me log/delete.me config/database.yml.example
COPY database.yml /config

RUN gem install bundler
RUN bundle install

RUN bundle exec rake generate_secret_token
RUN RAILS_ENV=production bundle exec rake db:migrate
RUN RAILS_ENV=production REDMINE_LANG=uk bundle exec rake redmine:load_default_data 

RUN chown -R redmine:redmine files log tmp public/plugin_assets 
RUN chmod -R 755 files log tmp public/plugin_assets

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]   