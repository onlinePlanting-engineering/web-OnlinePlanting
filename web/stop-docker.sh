#!/bin/bash 
#

docker stop api 
docker rm api
docker image rm planting/api
