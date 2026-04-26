node {
    stage('Preparation') {
        checkout scm
    }
    stage('Build image') {
        sh "docker build -t zheltyshevas/ostock-postgres:0.0.2 ."
    }
    stage('Push image') {
        sh "docker push zheltyshevas/ostock-postgres:0.0.2"
    }
    stage('Kubernetes deploy') {
        withKubeConfig([credentialsId: 'minikube-jenkins-robot', serverUrl: 'https://minikube:8443']) {
            sh 'kubectl apply -f postgres-deployment.yaml,postgres-service.yaml'
        }
    }
}
