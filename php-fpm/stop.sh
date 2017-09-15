#!/bin/bash 
#

docker stop website 
docker rm website
docker image rm planting/php-fpm:5.4 
