pipeline{

    agent any

    environment{
        dockerImage = ''
        registry = 'eklavya163940/jenkins-docker'
    }

    stages{
        stage('Build Docker Image'){
            steps{
                script{
                    dockerImage = docker.build("${registry}:latest")
                }
            }
        }
    }
}