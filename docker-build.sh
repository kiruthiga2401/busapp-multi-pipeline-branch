#!/bin/bash

version=production

sudo docker build -t kiruthigakanagaraj/busapp:${version} .
sudo docker push kiruthigakanagaraj/busapp:${version}
