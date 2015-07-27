#!/bin/bash
apt-get update
wget -qO- https://get.docker.com/ | sh
#Run Docker
docker rm vapp
docker rmi preetick/business:latest
docker run --name vapp -d -p 8080:8080 -e DB_IP=dbvminstance.westus.cloudapp.azure.com -e DB_PASSWORD=welcome123 -e DB_PORT=3306 -e DB=VehicleRental preetick/business:latest

docker restart vapp
