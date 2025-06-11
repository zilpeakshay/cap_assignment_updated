#!/bin/bash
set -e

echo "Starting Minikube..."
minikube start --driver=docker

echo "Setting context..."
kubectl config use-context minikube

echo "Installing Helm..."
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

echo "Cluster setup complete."
