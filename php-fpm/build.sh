#!/bin/bash

docker build -t planting/php-fpm:5.4 .

#docker run -d -p 8080:80 --name website planting/php-fpm:5.4
