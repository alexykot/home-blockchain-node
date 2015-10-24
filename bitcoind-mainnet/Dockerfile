FROM local:bitcoind-base

COPY bitcoin.mainnet.conf /root/bitcoin.mainnet.conf
COPY tc.sh /root/tc.sh
#RUN /root/tc.sh

EXPOSE 8333

CMD /usr/bin/bitcoind -conf=/root/bitcoin.mainnet.conf
