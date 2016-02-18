#!/bin/bash

#build bitcoind images
docker build --force-rm=true -t "local:debian-base" ~/node_provision/debian-base/
docker build --force-rm=true -t "local:bitcoin-classic-base" ~/node_provision/bitcoin-classic-base/
docker build --force-rm=true -t "local:bitcoin-classic-data" ~/node_provision/bitcoin-classic-data/
docker build --force-rm=true -t "local:bitcoin-classic-mainnet" ~/node_provision/bitcoin-classic-mainnet/
docker build --force-rm=true -t "local:bitcoin-classic-testnet" ~/node_provision/bitcoin-classic-testnet/

#start bitcoind containers
docker create --name bitcoin-classic-maindata local:bitcoin-classic-data
docker run -d --name bitcoin-classic-mainnet -p 8333:8333 --volumes-from bitcoin-classic-maindata local:bitcoin-classic-mainnet 
docker create --name bitcoin-classic-testdata local:bitcoin-classic-data
docker run -d --name bitcoin-classic-testnet -p 18333:18333 --volumes-from bitcoin-classic-testdata local:bitcoin-classic-testnet 

#build geth images
docker build --force-rm=true -t "local:ubuntu-base" ~/node_provision/ubuntu-base/
docker build --force-rm=true -t "local:geth-data" ~/node_provision/geth-data/
docker build --force-rm=true -t "local:geth-node" ~/node_provision/geth-node/

#start geth containers
docker create --name geth-data -v /root/.ethereum/keystore:/root/.ethereum/keystore local:geth-data
docker run -d --name geth-node -p 8545:8545 -p 30303:30303 --volumes-from geth-data local:geth-node
