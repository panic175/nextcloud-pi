#!/bin/sh

docker build -t nextcloud-pi .
docker login -u panic158
docker tag nextcloud-pi:latest panic158/nextcloud-pi:latest
docker push panic158/nextcloud-pi:latest 