#!/bin/bash
sudo apt-get -y update

sudo  apt-get -y install  tar
sudo  apt-get -y install  unzip
#install java
sudo  add-apt-repository -y  ppa:webupd8team/java
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo  apt-get  -y install oracle-java8-installer
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
export JRE_HOME=/usr/lib/jvm/java-8-oracle/jre/

wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key -y add -
echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list

sudo apt-get -y update

sudo apt-get -y install elasticsearch

sudo service elasticsearch restart