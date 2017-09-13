
FROM daocloud.io/python:3.6

MAINTAINER Frankin.Fu <zhiyongf@onlineplanting.com>

ENV APP_DIR /django-api
RUN mkdir ${APP_DIR}

#ADD blog.tar.gz /usr/src/ 
#RUN git clone https://github.com/onlinePlanting-engineering/planting-web && cp -r planting-web/* ${APP_DIR}
ADD . ${APP_DIR}
RUN chown -R nginx:nginx ${APP_DIR} 

WORKDIR ${APP_DIR}

RUN pip install gunicorn uwsgi
RUN pip install --no-cache-dir -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com


