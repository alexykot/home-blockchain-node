FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN echo "\n\n#sid unstable \n deb http://ftp.uk.debian.org/debian unstable main contrib " >> /etc/apt/sources.list
RUN echo "Package: *\nPin: release a=jessie\nPin-Priority: 700\n\nPackage: * \nPin: release a=unstable\nPin-Priority: 50\n\n" > /etc/apt/preferences

RUN apt-get update -qq && apt-get upgrade -y -qq 
RUN apt-get install -y -qq mc git unzip curl rsync wget apt-utils 
RUN apt-get update && apt-get autoclean && apt-get clean && apt-get autoremove

