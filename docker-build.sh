#!/bin/bash

version=production

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

sudo docker build -t kiruthigakanagaraj/busapp:${version} .
sudo docker push kiruthigakanagaraj/busapp:${version}
