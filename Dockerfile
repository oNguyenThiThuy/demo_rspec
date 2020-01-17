FROM ruby:2.5.1

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  nano vim cron

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v 2.0.1

ENV BUNDLER_VERSION 2.0.1
RUN bundle install --jobs 20 --retry 5

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3030

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3030"]