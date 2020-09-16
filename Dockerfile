FROM ruby:2.4.6-slim
LABEL maintainer="developer@inspiringbenefits.com"

RUN set -eux; \
  apt-get update; \
  apt-get install -y --no-install-recommends curl; \
  curl -sL https://deb.nodesource.com/setup_13.x | bash -; \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -; \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" \
  | tee /etc/apt/sources.list.d/yarn.list; \
  apt-get update; \
  apt-get install -y --no-install-recommends git build-essential default-libmysqlclient-dev nodejs yarn imagemagick freetds-dev; \
  rm -rf /var/lib/apt/lists/*; \
  mkdir /tmp/phantomjs; \
  curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
  | tar -xj --strip-components=1 -C /tmp/phantomjs; \
  mv /tmp/phantomjs/bin/phantomjs /usr/local/bin; \
  rm -rf /tmp/phantomjs

CMD ["irb"]
