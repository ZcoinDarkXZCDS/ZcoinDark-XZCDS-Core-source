FROM debian:stretch
LABEL maintainer="ZcoinDark Developers <dev@zcoindark.org>"
LABEL description="Dockerised ZcoinDarkCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
