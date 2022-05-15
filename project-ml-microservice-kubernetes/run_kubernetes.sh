#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=techdemowz/project5
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy project5 --image=techdemowz/project5
# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/project5-796955cd89-p4wj7 --address 0.0.0.0 80:80