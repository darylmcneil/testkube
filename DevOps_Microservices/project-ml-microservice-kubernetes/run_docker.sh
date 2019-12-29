#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t daryl1-py-app . 

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -it --rm -p 8000:5001 --name daryl-py-app 

