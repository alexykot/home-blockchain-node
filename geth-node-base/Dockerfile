FROM local:ubuntu-base

#install geth
RUN apt-get install -q -y software-properties-common
RUN add-apt-repository ppa:ethereum/ethereum
RUN add-apt-repository ppa:ethereum/ethereum-dev
RUN apt-get update
RUN apt-get install -q -y geth
EXPOSE 8545 30303
EXPOSE 18545 40303

#install solidity
RUN apt-get -y install build-essential git cmake libboost-all-dev libgmp-dev libleveldb-dev libminiupnpc-dev libreadline-dev libncurses5-dev libcurl4-openssl-dev libcryptopp-dev libjson-rpc-cpp-dev libmicrohttpd-dev libjsoncpp-dev libedit-dev libz-dev 

WORKDIR /root
RUN git clone --recursive https://github.com/ethereum/webthree-umbrella.git
RUN /root/webthree-umbrella/webthree-helpers/scripts/ethupdate.sh --no-push --simple-pull --project solidity
RUN /root/webthree-umbrella/webthree-helpers/scripts/ethbuild.sh --no-git --project solidity --all --cores 2 -DEVMJIT=0 -DETHASHCL=0
RUN cp /root/solidity/build/solc/solc /usr/local/bin




