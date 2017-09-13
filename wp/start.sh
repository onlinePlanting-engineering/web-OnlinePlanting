#!/bin/bash

docker build -t planting/wordpress:4.8 .

docker run -d -p 8081:80 --name wordpress \
	-e WORDPRESS_DB_HOST=192.168.0.6:3307 \
	-e WORDPRESS_DB_USER=admin \
	-e WORDPRESS_DB_PASSWORD=planting \
	planting/wordpress:4.8
