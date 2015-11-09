#!/bin/bash

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDYMKkvEMcENOkNCF1VsFe+aK3NiViEoJUt0kKgKCoOuUkLOp74jToO5kvGbcBWbvhW1e7gxKSarNdUfQ3SjdJ+FrSF8w4yYu6viNchON+x8VCSJzGR9uf99Y8qM6eemHwGzzCVNoqkx9F4r5+7hdZSz6qJpMKB0RFCg+qoyApxIxewFYGG3idSQ4CqkbO8Dazu1SYBi6dCCJhETXdakF9pMb4IBbXn0aYdIyp6Nxngpg3WLoSVIYjLPrdNTjElex1aIL0p2+O+DGuxzQWXUii5fLRN45+VFZQdHxhuAlWo+fjYUQ4qQqVdD54xtpvDOk9BaJ2ehFeKp9m5/p9BTE27 alexykot@D630" > ~/.ssh/authorized_keys
/etc/init.d/ssh start

apt-get update
apt-get upgrade
apt-get install -y sudo mc git cpufrequtils sysfsutils apt-transport-https curl
git config --global core.editor "mcedit"

echo "\n\n#sid unstable \n deb http://ftp.uk.debian.org/debian unstable main contrib " >> /etc/apt/sources.list
echo "Package: *\nPin: release a=jessie\nPin-Priority: 700\n\nPackage: * \nPin: release a=unstable\nPin-Priority: 50\n\n" > /etc/apt/preferences

apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install -y docker-engine
service docker start

./init_containers.sh

