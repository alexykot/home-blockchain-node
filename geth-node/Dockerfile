FROM local:geth-base

WORKDIR /root

#download latest ethreum source
RUN /bin/bash -c "git clone https://github.com/ethereum/go-ethereum"

#build ethereum
WORKDIR /root/go-ethereum
RUN /bin/bash -c "make geth"
RUN /bin/bash -c "mv /root/go-ethereum/build/bin/geth /usr/local/bin/"
RUN /bin/bash -c "mkdir -p /root/.ethereum/keystore"
RUN /bin/bash -c "mkdir /var/log/ethereum && touch /var/log/ethereum/ethereum.log"

#apply bandwidth restriction (doesn't work now)
#COPY tc.sh /root/tc.sh
#RUN /root/tc.sh

WORKDIR /

EXPOSE 8545 30303

CMD /usr/local/bin/geth --identity "alexykot" --datadir "/root/.ethereum" --cache 64 --port 30303 --maxpeers 1024 --nat "any" --rpc --rpccorsdomain "*" --rpcaddr "0.0.0.0" --rpcport 8545 --rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --ipcdisable --shh --logfile "/var/log/ethereum/ethereum.log"
