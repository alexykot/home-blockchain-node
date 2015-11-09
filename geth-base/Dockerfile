FROM local:base

WORKDIR /root

#install golang itself
RUN /bin/bash -c "wget -q https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz"
RUN /bin/bash -c "tar -C /usr/local -xzf go1.5.1.linux-amd64.tar.gz"
RUN /bin/bash -c "rm go1.5.1.linux-amd64.tar.gz"
ENV PATH=$PATH:/usr/local/go/bin

#preinstall geth building environment dependencies
RUN /bin/bash -c "apt-get update"
RUN /bin/bash -c "apt-get install -y build-essential libgmp3-dev"
