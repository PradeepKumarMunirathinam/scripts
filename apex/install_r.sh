#!/bin/bash
apt-get update

sudo  apt-get -y install  tar
sudo  apt-get -y install  unzip
#install java
sudo  add-apt-repository -y  ppa:webupd8team/java
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo  apt-get  -y install oracle-java8-installer
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
export JRE_HOME=/usr/lib/jvm/java-8-oracle/jre/


#install scala
wget http://www.scala-lang.org/files/archive/scala-2.11.7.tgz
 sudo mkdir /opt/scala
 sudo tar xvf scala-2.11.7.tgz -C /opt/scala/

#install spark
wget http://d3kbcqa49mib13.cloudfront.net/spark-1.5.0-bin-hadoop2.6.tgz
sudo mkdir /opt/spark-1.5.0
 sudo tar xvf  spark-1.5.0-bin-hadoop2.6.tgz -C /opt/spark-1.5.0/


#Install R from marutter/rrutter repository
echo 'deb http://ftp.iitm.ac.in/cran//bin/linux/ubuntu precise/' | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update