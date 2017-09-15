#!/bin/bash 
#
set -e

DB_HOST=${DB_HOST:-192.168.0.6}
DB_PORT=${DB_PORT:-3307}
DB_USER=${DB_USER:-admin}
DB_PASS=${DB_PASS:-planting}
DB_NAME=${DB_NAME:-planting2}

echo '---------------Create Database------------------------------'
mysql -h ${DB_HOST} -P ${DB_PORT} -u${DB_USER} -p${DB_PASS} -e "CREATE DATABASE planting2 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

echo '-------------- Import WP data ------------------------------'
mysql -h ${DB_HOST} -P ${DB_PORT} -u${DB_USER} -p${DB_PASS} ${DB_NAME} < wp_users.sql

echo '---------------migrate database main------------------------'
docker exec -it api python manage.py migrate --fake-init

#echo '---------------create superuser admin-----------------------'
#docker exec -it api python manage.py createsuperuser --username planting --email fuzhiyong@onlineplanting.com --database default
