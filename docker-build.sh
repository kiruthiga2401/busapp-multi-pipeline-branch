#!/bin/bash

version=development

sudo docker build -t kiruthigakanagaraj/busapp:${version} .
sudo docker push kiruthigakanagaraj/busapp:${version}
