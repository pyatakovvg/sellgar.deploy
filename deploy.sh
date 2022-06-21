#!/bin/sh

git pull

cd ./sellgar.admin.ui

git pull

cd ./sellgar.client.ui

git pull

cd ../sellgar.gateway

git pull

cd ../sellgar.service

git pull

docker-compose up --build -d

# shellcheck disable=SC2046
docker rmi $(docker images -f dangling=true -q) --force