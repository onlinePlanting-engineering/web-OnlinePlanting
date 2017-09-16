#!/bin/bash
#
cd centos7
echo "Stop centos --------------"
./stop.sh

cd ../mysql  
echo "stop mysql----------------"
./stop.sh

cd ../web 
echo "stop web ---------------------"
./stop-docker.sh
#./init_django.sh

cd ../php-fpm
echo "stop php-fmp -------------------"
./stop.sh

cd ../wp
echo "stop wordpress -----------------"
./stop.sh

cd ../nginx
echo "stop nginx-------------------"
./stop.sh
