#!/bin/bash 
#

docker stop wordpress 
docker rm wordpress
docker image rm planting/wordpress:4.8
