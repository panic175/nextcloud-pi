#!/bin/sh

echo "Version: $1"
set -e
docker build -t nextcloud-pi .
docker login -u panic158
docker tag nextcloud-pi:latest panic158/nextcloud-pi:latest
docker tag nextcloud-pi:latest panic158/nextcloud-pi:$1
docker push panic158/nextcloud-pi:latest 
docker push panic158/nextcloud-pi:$1 