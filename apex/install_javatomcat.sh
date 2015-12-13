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
#install tomcat
sudo mkdir /opt/tomcat
cd /opt/tomcat
sudo wget http://www.interior-dsgn.com/apache/tomcat/tomcat-8/v8.0.29/bin/apache-tomcat-8.0.29.zip
sudo wget https://www.apache.org/dist/tomcat/tomcat-8/v8.0.29/bin/apache-tomcat-8.0.29.zip.md5
cat apache-tomcat-8.0.29.zip.md5
md5sum apache-tomcat-8.0.29.zip
sudo unzip apache-tomcat-8.0.29.zip
cd apache-tomcat-8.0.29/bin
sudo chmod 777 /opt/tomcat/apache-tomcat-8.0.29/bin/*.sh
sudo ln -s /opt/tomcat/apache-tomcat-8.0.29/bin/startup.sh /usr/bin/tomcatup
 sudo ln -s /opt/tomcat/apache-tomcat-8.0.29/bin/shutdown.sh /usr/bin/tomcatdown
sudo chmod 777 /opt/tomcat/apache-tomcat-8.0.29/logs/
tomcatup