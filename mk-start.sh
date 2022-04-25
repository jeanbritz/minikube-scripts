#!/bin/bash
 
set -e
 
echo "Starting Minikube"
minikube start \
    --driver=virtualbox \
    --apiserver-names=minikube \
    --kubernetes-version=v1.23.3 \
    --addons=ingress \
    --memory=8192 \
    --cpus=4
 
minikube_ip=$(minikube ip)
echo "Your Minikube IP: $minikube_ip"
