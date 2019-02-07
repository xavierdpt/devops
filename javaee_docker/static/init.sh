#!/bin/bash
#cat /dynamic/init.sh >>/etc/bash.bashrc
#source /dynamic/init.sh
mkdir /home/user/workspace
chown user:user /home/user/workspace
su -c "JAVA_HOME=/home/user/jdk-11.0.2/bin" DISPLAY=:0 /downloaded/eclipse-installer/eclipse-inst" -l user
su -c "JAVA_HOME=/home/user/jdk-11.0.2/bin" DISPLAY=:0 /downloaded/eclipse-installer/eclipse-inst" -l user
