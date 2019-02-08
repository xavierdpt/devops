#!/bin/bash

DOWNLOAD_DIR=downloaded

JDK_DIR=jdk-11.0.2
JDK_TGZ=jdk-11.0.2_linux-x64_bin.tar.gz

if [ ! -e $DOWNLOAD_DIR ] ; then
  mkdir $DOWNLOAD_DIR
fi

if [ ! -e $DOWNLOAD_DIR/$JDK_DIR ] ; then
  echo "Fetching JDK"
  curl -L -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/11.0.2+9/f51449fcd52f4d52b93a989c5c56ed3c/$JDK_TGZ -o $DOWNLOAD_DIR/$JDK_TGZ
  tar xf $DOWNLOAD_DIR/$JDK_TGZ -C ./$DOWNLOAD_DIR
  rm $DOWNLOAD_DIR/$JDK_TGZ
fi

docker build -t xavierdpt/ubuntu-jdk .
