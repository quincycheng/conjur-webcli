#!/bin/bash
docker kill $(docker ps -aq) 
docker rm $(docker ps -aq)


#Build Slim
docker build -f Dockerfile-slim -t conjur-webcli:slim-0.1 .

#Build Full
docker build -t conjur-webcli:0.1 .

# Run Slim
#docker run -p 3000:3000 -v /var/run/docker.sock:/var/run/docker.sock -v $HOME:/root \
#  conjur-webcli:slim-0.1 


# Run Full
docker run -p 3000:3000 -v /var/run/docker.sock:/var/run/docker.sock -v $HOME:/root \
  conjur-webcli:0.1
