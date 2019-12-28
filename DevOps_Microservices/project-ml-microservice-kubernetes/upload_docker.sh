#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/image tag>
dockerpath=cymba123/daryl-py-app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag<image id number> $dockerpath:firsttry

# Step 3:
# Push image to a docker repository
docker push $dockerpath
