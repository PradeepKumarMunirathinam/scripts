#!/bin/bash
sudo apt-get -y update

sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y  update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get -f install
sudo apt-get  install oracle-java8-installer

export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
export JRE_HOME=/usr/lib/jvm/java-8-oracle/jre/

#install rundec
sudo wget -nv http://dl.bintray.com/rundeck/rundeck-deb/rundeck-2.5.1-1-GA.deb -O /tmp/rundeck.deb
sudo dpkg -i /tmp/rundeck.deb && rm /tmp/rundeck.deb

