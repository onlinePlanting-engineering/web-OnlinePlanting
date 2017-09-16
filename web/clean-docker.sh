#!/bin/bash 
#

docker stop api-server 
docker rm api-server
docker image rm planting/api
