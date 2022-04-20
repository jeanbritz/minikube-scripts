#!/bin/bash
 
set -e
 
echo "Starting Minikube"
minikube start --driver=virtualbox --kubernetes-version=v1.20.0 --memory=8192 --cpus=4
 
minikube_ip=$(minikube ip)
echo "Your Minikube IP: $minikube_ip"
