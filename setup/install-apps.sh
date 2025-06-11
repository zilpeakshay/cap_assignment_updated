#!/bin/bash
set -e

echo "Deploying Blue version..."
kubectl apply -f ../app/blue/k8s-deployment.yaml

echo "Deploying Green version..."
kubectl apply -f ../app/green/k8s-deployment.yaml

echo "Applying Ingress (initially to Blue)..."
kubectl apply -f ../ingress/ingress-blue.yaml
