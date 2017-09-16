#!/bin/bash
#

cd centos7
echo "Build centos7 -------------"
./build.sh

cd ../mysql  
echo "Build mysql----------------"
./build.sh

cd ../web 
echo "Build web ---------------------"
./build-docker.sh
#./init_django.sh

cd ../php-fpm
echo "Build php-fpm -------------------"
./build.sh

cd ../wp
echo "Build wordpress -----------------"
./build.sh

cd ../nginx
echo "Build nginx-------------------"
./build.sh
