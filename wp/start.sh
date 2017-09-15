#!/bin/bash

set -e

DB_HOST=${DB_HOST:=db}
DB_PORT=${DB_PORT:=3306}
DB_USER=${DB_USER:=admin}
DB_PASS=${DB_PASS:=planting}
DB_NAME=${DB_NAME:=planting2}

docker build -t planting/wordpress:4.8 .

docker run -d -p 8081:80 --name wordpress \
	--link dbserver:db \
	-v /app \
	-e WORDPRESS_DB_HOST=${DB_HOST}:${DB_PORT} \
	-e WORDPRESS_DB_USER=${DB_USER} \
	-e WORDPRESS_DB_PASSWORD=${DB_PASS} \
	-e WORDPRESS_DB_NAME=${DB_NAME} \
	planting/wordpress:4.8
