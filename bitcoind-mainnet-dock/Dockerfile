FROM local:bitcoind-base

COPY bitcoin.mainnet.conf /root/.bitcoin.mainnet/bitcoin.mainnet.conf

EXPOSE 8333

CMD /usr/bin/bitcoind -conf=/root/.bitcoin.mainnet/bitcoin.mainnet.conf
