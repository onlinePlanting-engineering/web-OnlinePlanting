#!/bin/bash

docker build -t planting/mysql:5.5 .

docker run -d -p 3307:3306 -v /var/lib/docker/vfs/dir/dbdata:/var/lib/mysql --name dbserver planting/mysql:5.5
