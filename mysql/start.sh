#!/bin/bash

docker run -d -p 3306:3306 -v /var/lib/docker/vfs/dir/dbdata:/var/lib/mysql --name dbserver planting/mysql:5.5
