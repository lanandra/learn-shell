#!/bin/bash
#remove existing image and pull newer image
#run container automatically using docker-compose

docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'hello-world:latest') > /tmp/pull_hello_world.out 2>&1
cd /home/lanandra/scripts ; docker-compose down > /tmp/pull_hello_world 2>&1
docker pull hello-world:latest > /tmp/pull_hello_world 2>&1
cd /home/lanandra/scripts ; docker-compose up -d > /tmp/pull_hello_world 2>&1
