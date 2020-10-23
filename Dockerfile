FROM inspiringbenefits/ruby:2.4.6-node
LABEL maintainer="developer@inspiringbenefits.com"

RUN apt-get update; \
    apt-get install -y --no-install-recommends libxrender-dev;

CMD ["irb"]
