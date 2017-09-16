#!/bin/bash
#
cd centos7
echo "Clean centos --------------"
./clean.sh

cd ../mysql  
echo "Clean mysql----------------"
./clean.sh

cd ../web 
echo "Clean web ---------------------"
./clean-docker.sh
#./init_django.sh

cd ../php-fpm
echo "Clean php-fmp -------------------"
./clean.sh

cd ../wp
echo "Clean wordpress -----------------"
./clean.sh

cd ../nginx
echo "Clean nginx-------------------"
./clean.sh
