FROM python:3.7-slim

MAINTAINER "Neo Peng <pengzhile@gmail.com>"

VOLUME /data
WORKDIR /opt/app
ADD . .
RUN pip install --upgrade pip && pip install .[api,cloud]

ENV \
    PORT=80 \
    HOST=0.0.0.0
 
EXPOSE 80

ENTRYPOINT ["bin/startup.sh"]
