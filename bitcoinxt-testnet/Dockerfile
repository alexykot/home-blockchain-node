FROM local:bitcoinxt-base

COPY bitcoin.testnet.conf /etc/bitcoinxt/bitcoin.testnet.conf
COPY tc.sh /root/tc.sh
#RUN /root/tc.sh

EXPOSE 18333

CMD /usr/bin/bitcoinxtd -conf=/etc/bitcoinxt/bitcoin.testnet.conf
#CMD /bin/sleep 10000