FROM inspiringbenefits/ruby:2.2.1-node
LABEL maintainer="developer@inspiringbenefits.com"

RUN apt-get update; \
    apt-get install -y --no-install-recommends libfontconfig1 libxext-dev imagemagick libxrender-dev;

RUN apt-get install -y libpq-dev

CMD ["irb"]
