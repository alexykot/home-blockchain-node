FROM ubuntu:14.04.3

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update -q && apt-get upgrade -y -q && apt-get dist-upgrade -q -y
RUN apt-get install -y -qq mc git unzip curl rsync wget apt-utils
RUN apt-get update && apt-get autoclean && apt-get clean && apt-get autoremove

