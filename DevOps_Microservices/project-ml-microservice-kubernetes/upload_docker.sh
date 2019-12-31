#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/image tag>
dockerpath=cymba123/project5

# Step 2:  
# Authenticate & tag
echo "cymba123/daryl-py-app: $dockerpath"
docker login -u "cymba123" -p "!!Myproject5pp"
docker tag 8d05ef407f9f $dockerpath:2.0
 
 

# Step 3:
# Push image to a docker repository
docker push $dockerpath:2.0
