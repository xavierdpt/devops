#!/bin/bash
cd ubuntu-upgraded
./build.sh
cd ..

cd ubuntu-jdk
./build.sh
cd ..

cd ubuntu-tomcat
./build.sh
cd ..

cd ubuntu-eclipse
./build.sh
cd ..
