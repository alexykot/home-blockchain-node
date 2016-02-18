FROM local:bitcoin-classic-base

COPY bitcoin.testnet.conf /etc/bitcoin-classic/bitcoin.testnet.conf
COPY tc.sh /root/tc.sh
#RUN /root/tc.sh

EXPOSE 18333

CMD /usr/bin/bitcoind -conf=/etc/bitcoin-classic/bitcoin.testnet.conf
#CMD /bin/sleep 10000