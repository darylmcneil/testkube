#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=cymba123/daryl-py-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run daryl-py-app2 --image=$dockerpath --port=80
docker login -u "cymba123" -p "!!Myproject5pp"


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment daryl-py-app2 --type=LoadBalancer --port=80 --target-port=8000 --name=dport1
kubectl port-forward pod/mypod 8000:80

# Copy the name of the Pod and run the command to see the logs 
kubectl logs daryl-py-app2-9bc8c4b8d-4bt99
