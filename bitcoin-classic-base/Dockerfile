FROM local:debian-base

WORKDIR /root

RUN apt-get update
RUN apt-get install -y -t unstable libboost-all-dev vim-common libopts25 ntp
RUN apt-get update && apt-get autoclean && apt-get clean && apt-get autoremove
RUN wget https://github.com/bitcoinclassic/bitcoinclassic/releases/download/v0.11.2.cl1/bitcoin-0.11.2-linux64.tar.gz
RUN tar -zxvf bitcoin-0.11.2-linux64.tar.gz
RUN mv /root/bitcoin-0.11.2/bin/* /usr/bin
RUN mv /root/bitcoin-0.11.2/include/* /usr/include
RUN mv /root/bitcoin-0.11.2/lib/* /usr/lib
RUN mkdir /etc/bitcoin-classic
RUN mkdir /var/lib/bitcoin-classic

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/bitcoin-0.11.2-linux64.tar.gz /root/bitcoin-0.11.2



