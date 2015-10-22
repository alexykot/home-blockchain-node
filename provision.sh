#!/bin/bash

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvR0/+SLLxnsNvNVED2nEtWFa6Giw+k1BZLWcRX1e5rfhv6KOSnee9NdJXjPy7RSg3hIESaeDFqciXliO9fvAk475mcwHALjxg5aevIk/JJsgoD8F7dDONYLvQwycD/X0lV9BRIqSCU65TAX1hoJ09d8PgaWY0XA5H3NBJ+Xn8ykljbVI9ByTd9yIc3y2pudKOln/STF2XVFSIwXQRGy/jGXXY1kIblWk6Zr2dFyEKzi3Y5cQV0HUkulCf0qLeK3YLgDgcoAaQC+EYga1KbNFO6oTVK7H7kieo5e8zCA4puCr7G4WiGBZ1gXMW0phiJrntpcpOBDb+JY/WglNCkaYj alexykot@D630" > ~/.ssh/authorized_keys
/etc/init.d/ssh start

apt-get update
apt-get upgrade
apt-get install -y sudo mc git cpufrequtils sysfsutils apt-transport-https

echo "\n\n#sid unstable \n deb http://ftp.uk.debian.org/debian unstable main contrib " >> /etc/apt/sources.list

apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install -y docker-engine
service docker start



