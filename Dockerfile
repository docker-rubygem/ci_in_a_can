FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.0

RUN gem install ci_in_a_can --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ciinacan"]
CMD ["--help"]
