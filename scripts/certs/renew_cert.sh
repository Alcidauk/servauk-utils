#!/bin/bash

cd ~/docker-yml/nginx
docker-compose stop

sudo certbot renew
cd ~/docker-yml/mailserver && ./mail_cert.sh

cd ~/docker-yml/nginx
docker-compose up -d
