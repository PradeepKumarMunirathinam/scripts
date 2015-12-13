# Install Java
sudo apt-get -y update



sudo apt-get install -y tar
sudo apt-get install -y unzip

#install java

sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get -y install oracle-java8-installer
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
export JRE_HOME=/usr/lib/jvm/java-8-oracle/jre/


#install scala
wget http://www.scala-lang.org/download/2.11.7.html

#install spark
wget http://d3kbcqa49mib13.cloudfront.net/spark-1.5.0-bin-hadoop2.6.tgz