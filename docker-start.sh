#!/bin/bash
#

cd centos7
echo "Start centos7 -------------"
./build.sh

cd ../mysql  
echo "start mysql----------------"
./start.sh

cd ../web 
echo "start web ---------------------"
./start-docker.sh
#./init_django.sh

cd ../php-fpm
echo "start php-fpm -------------------"
./build.sh

cd ../wp
echo "start wordpress -----------------"
./start.sh

cd ../nginx
echo "start nginx-------------------"
./start.sh
