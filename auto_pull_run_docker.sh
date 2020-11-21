# !/bin/bash
# remove existing images based on repositary name and tag
# stop all containers that defined in docker-compose
# pull newer images
# run container automatically using docker-compose
# please change the docker images and scripts path as necessary

docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'hello-world:latest')
cd /home/lanandra/scripts ; docker-compose down
docker pull hello-world:latest
cd /home/lanandra/scripts ; docker-compose up -d
