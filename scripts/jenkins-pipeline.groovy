pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'docker build -t app-blue:latest ./app/blue'
                sh 'docker build -t app-green:latest ./app/green'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying to Kubernetes...'
                sh 'kubectl apply -f ./app/blue/k8s-deployment.yaml'
                sh 'kubectl apply -f ./app/green/k8s-deployment.yaml'
            }
        }
    }
}
