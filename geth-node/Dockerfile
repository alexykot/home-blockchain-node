FROM local:base

WORKDIR /root

#install go
RUN /bin/bash -c "wget -q https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz"
RUN /bin/bash -c "tar -C /usr/local -xzf go1.5.1.linux-amd64.tar.gz"
RUN /bin/bash -c "rm go1.5.1.linux-amd64.tar.gz"
ENV PATH=$PATH:/usr/local/go/bin

#download latest ethreum source
RUN /bin/bash -c "apt-get update"
RUN /bin/bash -c "apt-get install -y build-essential libgmp3-dev"
RUN /bin/bash -c "git clone https://github.com/ethereum/go-ethereum"

#build ethereum
WORKDIR /root/go-ethereum
RUN /bin/bash -c "make geth"
RUN /bin/bash -c "mv /root/go-ethereum/build/bin/geth /usr/local/bin/"
RUN /bin/bash -c "mkdir /var/log/ethereum && touch /var/log/ethereum/ethereum.log"

#apply bandwidth restriction
COPY tc.sh /root/tc.sh
#RUN /root/tc.sh

WORKDIR /

EXPOSE 8545 30303 

CMD /usr/local/bin/geth --identity "alexykot" --datadir "/root/.ethereum" --cache "64" --port "30303" --maxpeers "1024" --nat "any" --rpc --rpcaddr "0.0.0.0" --rpcport "8545" --rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --ipcdisable --shh --logfile "/var/log/ethereum/ethereum.log"

