FROM local:bitcoind-base

COPY bitcoin.testnet.conf /root/.bitcoin.testnet/bitcoin.testnet.conf

EXPOSE 18333

CMD /usr/bin/bitcoind -conf=/root/.bitcoin.testnet/bitcoin.testnet.conf
