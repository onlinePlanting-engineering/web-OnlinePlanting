#!/bin/bash

docker build -t planting/centos:7.1 .

docker run -d -p 2222:22 --name base planting/centos:7.1
