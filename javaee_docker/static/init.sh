#!/bin/bash
cat /dynamic/init.sh >>/etc/bash.bashrc
source /dynamic/init.sh
apt-get update
apt-get upgrade
apt-get install -y git
