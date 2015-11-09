FROM ubuntu:14.04.3

RUN apt-get update -qq && apt-get upgrade -y -qq 
RUN apt-get install -y -qq mc git unzip curl rsync wget apt-utils 
RUN apt-get update && apt-get autoclean && apt-get clean && apt-get autoremove

ENV TERM xterm
