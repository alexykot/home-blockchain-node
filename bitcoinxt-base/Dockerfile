FROM local:base

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 97B6956B
RUN echo 'deb [ arch=amd64 ] http://bitcoinxt.software.s3-website-us-west-2.amazonaws.com/apt wheezy main' > /etc/apt/sources.list.d/bitcoinxt.list
RUN apt-get update
RUN apt-get install -y -t unstable libboost-all-dev 
RUN apt-get install -y vim-common
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y bitcoinxt
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

