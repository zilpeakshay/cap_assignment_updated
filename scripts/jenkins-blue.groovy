pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'docker build -t app-blue:latest ./app/blue'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying to Kubernetes...'
                sh 'kubectl apply -f ./app/blue/k8s-deployment.yaml'
            }
        }
    }
}