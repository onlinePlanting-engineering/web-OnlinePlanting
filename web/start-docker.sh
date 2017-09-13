#!/bin/bash 
#
docker exec -d dbserver mysql -uadmin -pq1w2e3r4 -e "create database planting;"
docker build -t planting/api .
docker run --name api \
-v /app \
-v /app/static \
--link mysql:mysql \
-p 9090:8000 \
-d planting/api /usr/local/bin/uwsgi --http :8000 --chdir /app -w planting.wsgi

#-d feiyu/django-app /usr/local/bin/gunicorn myblog.wsgi:application -w 1 -b :8000
