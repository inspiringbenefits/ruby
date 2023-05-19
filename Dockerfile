FROM inspiringbenefits/ruby:2.4.6-node
LABEL maintainer="developer@inspiringbenefits.com"

RUN apt-get update; \
    apt-get install -y --no-install-recommends libxrender-dev;

ADD ./CAs/* /usr/local/share/ca-certificates/
RUN chmod 644 /usr/local/share/ca-certificates/* && update-ca-certificates

CMD ["irb"]
