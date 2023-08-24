FROM inspiringbenefits/ruby:2.2.1-node
LABEL maintainer="developer@inspiringbenefits.com"

RUN apt-get update; \
    apt-get install -y --no-install-recommends libfontconfig1 libxext-dev imagemagick libxrender-dev;

RUN apt-get install -y libpq-dev

ADD ./CAs/* /usr/local/share/ca-certificates/
RUN chmod 644 /usr/local/share/ca-certificates/* && update-ca-certificates

CMD ["irb"]
