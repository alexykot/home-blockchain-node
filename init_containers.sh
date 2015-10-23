#!/bin/bash


docker build --force-rm=true -t "local:base" ~/node_provision/debian-base/
docker build --force-rm=true -t "local:bitcoind-base" ~/node_provision/bitcoind-base/
docker build --force-rm=true -t "local:bitcoind-mainnet" ~/node_provision/bitcoind-mainnet-dock/
docker build --force-rm=true -t "local:bitcoind-testnet" ~/node_provision/bitcoind-testnet-dock/

docker run -d --name bitcoind-mainnet local:bitcoind-mainnet 
docker run -d --name bitcoind-testnet local:bitcoind-testnet 

