#!/bin/bash
service slapd start
P=`pgrep slapd`
while [ -e /proc/$P ] ; do
	sleep 1 
done
