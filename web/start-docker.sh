#!/bin/bash 
#

docker build -t planting/api .
docker run --name api-server \
--link dbserver:db \
-p 9090:8000 \
-d planting/api /usr/local/bin/gunicorn planting.wsgi:application -w 1 -b :8000
#-d planting/api /usr/local/bin/uwsgi --http :8000 --chdir /app -w planting.wsgi
