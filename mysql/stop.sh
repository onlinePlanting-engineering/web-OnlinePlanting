#!/bin/bash

docker stop dbserver
docker rm dbserver
docker image rm planting/mysql:5.5
