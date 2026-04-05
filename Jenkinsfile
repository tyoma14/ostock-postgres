node {
    stage('Kubernetes deploy') {
        withKubeConfig([credentialsId: 'minikube-jenkins-robot', serverUrl: 'https://minikube:8443']) {
            sh 'kubectl apply -f postgres-deployment.yaml,postgres-service.yaml'
        }
    }
}