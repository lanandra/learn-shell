#!/bin/bash
#remove existing image and pull newer image
#run container automatically using docker-compose

docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'hello-world:latest')
cd /home/lanandra/scripts ; docker-compose down
docker pull hello-world:latest
cd /home/lanandra/scripts ; docker-compose up -d
