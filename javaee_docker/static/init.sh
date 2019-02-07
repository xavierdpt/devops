#!/bin/bash
cat /dynamic/init.sh >>/etc/bash.bashrc
source /dynamic/init.sh
apt-get update
apt-get upgrade
apt-get install -y git firefox
useradd -m user
su -c "PATH=/downloaded/apache-maven-3.6.0/bin:/downloaded/apache-tomcat-9.0.14/bin:/downloaded/jdk-11.0.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/user/maven-3.5.3/bin:\"$PATH\" DISPLAY=:0 /downloaded/eclipse-installer/eclipse-inst" -l user
su -c "PATH=/downloaded/apache-maven-3.6.0/bin:/downloaded/apache-tomcat-9.0.14/bin:/downloaded/jdk-11.0.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/user/maven-3.5.3/bin:\"$PATH\" DISPLAY=:0 /downloaded/eclipse-installer/eclipse-inst" -l user
