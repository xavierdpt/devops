#!/bin/bash

DOWNLOAD_DIR=downloaded

TOMCAT_DIR=apache-tomcat-9.0.14
TOMCAT_ZIP=apache-tomcat-9.0.14.zip

if [ ! -e $DOWNLOAD_DIR ] ; then
  mkdir $DOWNLOAD_DIR
fi

if [ ! -e $DOWNLOAD_DIR/$TOMCAT_DIR ] ; then
  echo "Fetching Tomcat"
  curl -L http://apache.mediamirrors.org/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.zip -o $DOWNLOAD_DIR/$TOMCAT_ZIP
  unzip $DOWNLOAD_DIR/$TOMCAT_ZIP -d ./$DOWNLOAD_DIR
  rm $DOWNLOAD_DIR/$TOMCAT_ZIP
fi

docker build -t xavierdpt/tomcat .
