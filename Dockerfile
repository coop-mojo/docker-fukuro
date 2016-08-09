FROM ubuntu:latest
MAINTAINER Mojo

env DEBIAN_FRONTEND noninteractive

RUN sed -i -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list
ADD http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list /etc/apt/sources.list.d/d-apt.list
RUN apt-get update && apt-get -y --allow-unauthenticated install --reinstall apt-utils d-apt-keyring && apt-get update

RUN apt-get install -y make libsdl2-2.0-0 git python3-pip fonts-takao-gothic dmd-bin dub cmigemo
RUN pip3 install --upgrade pip && pip3 install mkdocs

RUN apt-get purge -y apt-utils && apt-get clean && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* dub.sdl

RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV DISPLAY :0
ENV FUKURO https://github.com/coop-mojo/moecoop.git

RUN mkdir /work
VOLUME /work
WORKDIR /work

COPY init.sh /
CMD ["/init.sh"]
