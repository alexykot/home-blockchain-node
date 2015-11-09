FROM local:bitcoinxt-base

COPY bitcoin.mainnet.conf /etc/bitcoinxt/bitcoin.mainnet.conf
COPY tc.sh /root/tc.sh
#RUN /root/tc.sh

EXPOSE 8333

CMD /usr/bin/bitcoinxtd -conf=/etc/bitcoinxt/bitcoin.mainnet.conf
#CMD /bin/sleep 10000