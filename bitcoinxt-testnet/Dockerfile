FROM local:bitcoind-base

COPY bitcoin.testnet.conf /root/.bitcoin.testnet/bitcoin.testnet.conf
COPY tc.sh /root/tc.sh
#RUN /root/tc.sh

EXPOSE 18333

CMD /usr/bin/bitcoind -conf=/root/.bitcoin.testnet/bitcoin.testnet.conf
