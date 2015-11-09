#!/bin/bash

#build bitcoind images
docker build --force-rm=true -t "local:debian-base" ~/node_provision/debian-base/
docker build --force-rm=true -t "local:bitcoinxt-base" ~/node_provision/bitcoind-base/
docker build --force-rm=true -t "local:bitcoinxt-data" ~/node_provision/bitcoinxt-data/
docker build --force-rm=true -t "local:bitcoinxt-mainnet" ~/node_provision/bitcoinxt-mainnet/
docker build --force-rm=true -t "local:bitcoinxt-testnet" ~/node_provision/bitcoinxt-testnet/

#start bitcoind containers
docker create --name bitcoinxt-maindata local:bitcoinxt-data
docker run -d --name bitcoinxt-mainnet -p 8333:8333 --volumes-from bitcoinxt-maindata local:bitcoinxt-mainnet 
docker create --name bitcoinxt-testdata local:bitcoinxt-data
docker run -d --name bitcoinxt-testnet -p 18333:18333 --volumes-from bitcoinxt-testdata local:bitcoinxt-testnet 

#build geth images
docker build --force-rm=true -t "local:geth-base" ~/node_provision/geth-base/
docker build --force-rm=true -t "local:geth-data" ~/node_provision/geth-data/
docker build --force-rm=true -t "local:geth-node" ~/node_provision/geth-node/

#start geth containers
docker create --name geth-data local:geth-data 
docker run -d --name geth-node -p 8545:8545 -p 30303:30303 --volumes-from geth-data local:geth-node-1.3.1
