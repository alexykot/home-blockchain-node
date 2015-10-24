#!/bin/bash

#build bitcoind images
docker build --force-rm=true -t "local:base" ~/node_provision/debian-base/
docker build --force-rm=true -t "local:bitcoind-base" ~/node_provision/bitcoind-base/
docker build --force-rm=true -t "local:bitcoind-maindata" ~/node_provision/bitcoind-maindata/
docker build --force-rm=true -t "local:bitcoind-mainnet" ~/node_provision/bitcoind-mainnet/
docker build --force-rm=true -t "local:bitcoind-testdata" ~/node_provision/bitcoind-testdata/
docker build --force-rm=true -t "local:bitcoind-testnet" ~/node_provision/bitcoind-testnet/

#start bitcoind containers
docker create --name bitcoind-maindata local:bitcoind-maindata
docker run -d --name bitcoind-mainnet --volumes-from bitcoind-maindata local:bitcoind-mainnet 
docker create --name bitcoind-testdata local:bitcoind-testdata
docker run -d --name bitcoind-testnet --volumes-from bitcoind-testdata local:bitcoind-testnet 

#build geth images
docker build --force-rm=true -t "local:geth-data" ~/node_provision/geth-data/
docker build --force-rm=true -t "local:geth-node" ~/node_provision/geth-node/

#start geth containers
docker create --name geth-data local:geth-data 
docker run -d --name geth-node --volumes-from geth-data local:geth-node
