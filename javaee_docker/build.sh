#!/bin/bash

DOWNLOAD_DIR=downloaded

JDK_DIR=jdk-11.0.2
JDK_TGZ=jdk-11.0.2_linux-x64_bin.tar.gz

TOMCAT_DIR=apache-tomcat-9.0.14
TOMCAT_ZIP=apache-tomcat-9.0.14.zip

MAVEN_DIR=apache-maven-3.6.0
MAVEN_TGZ=apache-maven-3.6.0-bin.tar.gz

if [ ! -e $DOWNLOAD_DIR ] ; then
  mkdir $DOWNLOAD_DIR
fi

if [ ! -e $DOWNLOAD_DIR/$JDK_DIR ] ; then
  echo "Fetching JDK"
  curl -L -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/11.0.2+9/f51449fcd52f4d52b93a989c5c56ed3c/$JDK_TGZ -o $DOWNLOAD_DIR/$JDK_TGZ
  tar xf $DOWNLOAD_DIR/$JDK_TGZ -C ./$DOWNLOAD_DIR
  rm $DOWNLOAD_DIR/$JDK_TGZ
fi

if [ ! -e $DOWNLOAD_DIR/$TOMCAT_DIR ] ; then
  echo "Fetching Tomcat"
  curl -L http://apache.mediamirrors.org/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.zip -o $DOWNLOAD_DIR/$TOMCAT_ZIP
  unzip $DOWNLOAD_DIR/$TOMCAT_ZIP -d ./$DOWNLOAD_DIR
  rm $DOWNLOAD_DIR/$TOMCAT_ZIP
fi

if [ ! -e $DOWNLOAD_DIR/$MAVEN_DIR ] ; then
  echo "Fetching Maven"
  curl -L http://mirror.ibcp.fr/pub/apache/maven/maven-3/3.6.0/binaries/$MAVEN_TGZ -o $DOWNLOAD_DIR/$MAVEN_TGZ
  tar xf $DOWNLOAD_DIR/$MAVEN_TGZ -C ./$DOWNLOAD_DIR
  rm $DOWNLOAD_DIR/$MAVEN_TGZ
fi

if [ ! -e dynamic ] ; then
  mkdir dynamic
fi

echo "export PATH=/$DOWNLOAD_DIR/$MAVEN_DIR/bin:/$DOWNLOAD_DIR/$TOMCAT_DIR/bin:/$DOWNLOAD_DIR/$JDK_DIR/bin:$PATH" >>dynamic/init.sh
chmod a+x dynamic/init.sh

docker build -t youpi .



