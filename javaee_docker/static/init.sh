#!/bin/bash
cat /dynamic/init.sh >>/etc/bash.bashrc
source /dynamic/init.sh
apt-get update
apt-get upgrade
apt-get install -y git
#git clone --depth 1 https://github.com/resteasy/Resteasy.git
#cd Resteasy
#mvn install
