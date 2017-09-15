#!/bin/bash 
#

docker stop nginx-server
docker rm nginx-server
docker image rm nginx
