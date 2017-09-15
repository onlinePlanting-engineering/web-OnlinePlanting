#!/bin/bash 
#
docker build -t nginx .
docker run --name nginx-server \
--link api-server:api \
-v /www/static \
--volumes-from api-server \
--link wordpress:wp \
-p 7777:8080 \
-d nginx
