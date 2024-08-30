pipeline {
    agent any
    stages {
        stage('Build Maven') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/shivambhamare/CICD']]])
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t shivambhamare/sample:1.$BUILD_ID .'
            }
        }
        stage('push docker image'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhub-pwd')]) {
                    sh 'docker login -u shivambhamare -p ${dockerhub-pwd}'
}
                    sh 'docker push shivambhamare/sample:1.$BUILD_ID '
                }
            }
        }
    }
}
