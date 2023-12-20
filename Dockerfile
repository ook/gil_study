ARG RUBY_VERSION

FROM ruby:$RUBY_VERSION

COPY . /monte

WORKDIR /monte

CMD ["bundle", "exec", "ruby", "monte.rb"]
