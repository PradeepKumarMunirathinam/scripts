#!/bin/bash
apt-get update
wget -qO- https://get.docker.com/ | sh
#Run Docker

docker stop webp
docker rm webp
docker rmi  preetick/presentation:latest
docker run --name webp -d -p 8080:8080 -e BUSINESS_IP=businessvminstance.southeastasia.cloudapp.azure.com preetick/presentation:latest
docker restart webp
