#!/bin/bash 
#

echo '---------------migrate database main------------------------'
docker exec -it api python manage.py migrate

#echo '---------------create superuser admin-----------------------'
#docker exec -it api python manage.py createsuperuser --username planting --email fuzhiyong@onlineplanting.com --database default
