#!/bin/bash

# Stop and remove any existing container running the old version
docker stop busapp-prod || true
docker rm busapp-prod || true

# Pull the latest image from Docker Hub (optional, since it was just built locally)
docker pull kiruthigakanagaraj/busapp:production

# Run the new container
docker run -d --name busapp-prod -p 80:80 kiruthigakanagaraj/busapp:production
