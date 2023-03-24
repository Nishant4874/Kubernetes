#!/bin/bash

# Install Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Start Minikube cluster
minikube start

# Login to Docker Hub
docker login --username=nishantt1604 --password=Microsoft@1

# Build and tag Docker image
docker build -t nishantt1604/image_repo_nishant:latest .
docker tag nishantt1604/image_repo_nishant:latest nishantt1604/image_repo_nishant:v1

# Push Docker image to repository
docker login
docker push nishantt1604/image_repo_nishant:latest
docker push nishantt1604/image_repo_nishant:v1

# Deploy application
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# Get application URL
url=$(minikube service myapp --url)

# Display URL
echo "Application URL: $url"
