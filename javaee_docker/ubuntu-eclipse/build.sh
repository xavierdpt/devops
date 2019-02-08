#!/bin/bash

DOWNLOAD_DIR=downloaded

if [ ! -e $DOWNLOAD_DIR ] ; then
  mkdir $DOWNLOAD_DIR
fi

if [ ! -e $DOWNLOAD_DIR/eclipse-installer ] ; then
  echo "Fetching Eclipse"
  curl -L 'http://mirrors.xmission.com/eclipse/oomph/epp/2018-12/R/eclipse-inst-linux64.tar.gz' -o $DOWNLOAD_DIR/eclipse-inst-linux64.tar.gz
  tar xf $DOWNLOAD_DIR/eclipse-inst-linux64.tar.gz -C ./$DOWNLOAD_DIR
  rm $DOWNLOAD_DIR/eclipse-inst-linux64.tar.gz
fi

docker build -t xavierdpt/eclipse --network host .
