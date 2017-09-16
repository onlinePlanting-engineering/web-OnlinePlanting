#!/bin/bash 
#
docker run --name nginx-server \
--link api-server:api \
-v /www/static \
--volumes-from api-server \
--link wordpress:wp \
-p 80:80 \
-d nginx
