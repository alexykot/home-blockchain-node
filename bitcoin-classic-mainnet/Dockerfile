FROM local:bitcoin-classic-base

COPY bitcoin.mainnet.conf /etc/bitcoin-classic/bitcoin.mainnet.conf
COPY tc.sh /root/tc.sh
#RUN /root/tc.sh

EXPOSE 8333

CMD /usr/bin/bitcoind -conf=/etc/bitcoin-classic/bitcoin.mainnet.conf
#CMD /bin/sleep 10000