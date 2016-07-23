FROM ubuntu:latest
MAINTAINER Mojo

ENV FUKURO https://github.com/coop-mojo/moecoop.git

RUN apt-get update
RUN apt-get install -y wget
RUN wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list \
    && apt-get update && apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring && apt-get update

RUN apt-get install -y build-essential libsdl2-2.0-0 git fonts-noto \
                       dmd-bin dub \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8

RUN mkdir /work

VOLUME /work

WORKDIR /work

COPY init.sh /
CMD ["/init.sh"]
