# Kubernetes

## Containerized Microservice Challenge Solution
This repository contains my solution for the containerized microservice challenge. The solution consists of two applications, a microservice that exposes a JSON document and a second microservice that reverses the message text of the first microservice.

## Prerequisites
Before running the applications, please ensure that you have the following installed:
Docker
Kubectl

If you have Redhat or Centos based OS below steps can be followed for setting up Docker & Kubectl
# Install Docker
sudo yum install -y docker
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo usermod -aG docker $USER && newgrp docker

# Install Kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mkdir -p ~/.local/bin
sudo mv ./kubectl ~/.local/bin/kubectl

## Automated Deployment
To automate the deployment process, you can run the script.sh file included in the repository. This script will install Minikube, build the Docker images, deploy the applications to Kubernetes, and display the URL for the microservice.

For Reference
[ec2-user@ip-172-31-13-91 ~]$ curl http://192.168.49.2:30073
{"id":"1","message":"Hello world"}
[ec2-user@ip-172-31-13-91 ~]$ curl http://192.168.49.2:30073/reverse
The reversed message is: dlrow olleH
[ec2-user@ip-172-31-13-91 ~]$

## Conclusion
That's it! I hope this solution helps you with your containerized microservice challenge.

