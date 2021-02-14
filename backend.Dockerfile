FROM ruby:2.7.1

RUN apt-get update && apt-get install -y curl build-essential libpq-dev

WORKDIR /backend

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY Gemfile /backend/Gemfile
COPY Gemfile.lock /backend/Gemfile.lock

RUN bundle install

COPY . /backend

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]