#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=cymba123/daryl-py-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run daryl-py-app --image=daryl-py-app


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose service daryl-py-app --port=80 -target-port=8000 --name=dport

