#!/bin/bash
set -e

echo "Adding Jenkins Helm repo..."
helm repo add jenkins https://charts.jenkins.io
helm repo update

echo "Creating namespace..."
kubectl create namespace jenkins

echo "Installing Jenkins..."
helm install jenkins jenkins/jenkins -n jenkins -f ../jenkins/jenkins-values.yaml

echo "Waiting for Jenkins to be ready..."
kubectl rollout status deployment jenkins -n jenkins
