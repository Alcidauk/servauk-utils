#!/bin/bash

sudo rm -r ./letsencrypt
mkdir -p ./letsencrypt/live
sudo cp -rL /etc/letsencrypt/live/mail.ulica.fr ./letsencrypt/live

docker-compose stop && docker-compose up -d
