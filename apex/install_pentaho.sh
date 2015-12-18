#!/bin/bash
sudo  apt-get -y install  tar
sudo  apt-get -y install  unzip
sudo apt-get -y update

sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y  update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get -f install
sudo apt-get  install -y oracle-java8-installer

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

JAVA_HOME=/usr/lib/jvm/java-8-oracle/
PENTAHO_HOME=/opt/pentaho
PENTAHO_JAVA_HOME=$JAVA_HOME
PDI_VER=5.2.0.0-209
sudo wget -nv http://downloads.sourceforge.net/project/pentaho/Data%20Integration/5.2/pdi-ce-$PDI_VER.zip -O /tmp/pdi-ce-$PDI_VER.zip
sudo /usr/bin/unzip -q /tmp/pdi-ce-$PDI_VER.zip -d $PENTAHO_HOME
