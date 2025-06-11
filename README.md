# DevOps Blue-Green Deployment on Kubernetes

This project demonstrates a blue-green deployment strategy using Jenkins and Kubernetes.

## Components

- Kubernetes (Minikube or EKS)
- Jenkins (deployed via Helm)
- Node.js Dummy App (Blue & Green versions)
- Blue-Green deployment using Ingress

## Setup Instructions

### 1. Cluster Setup
```bash
cd setup
bash cluster-setup.sh
```

### 2. Jenkins Deployment
```bash
bash install-jenkins.sh
```

### 3. Deploy Applications
```bash
bash install-apps.sh
```

### 4. Switch Traffic
```bash
bash switch-traffic.sh green   # or blue
```

