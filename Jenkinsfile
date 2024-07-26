pipeline {
    agent any
    
    environment {
        DOCKER_CREDENTIALS_ID = 'dockerhub-credentials'
        DOCKER_IMAGE_NAME = 'eklavya163940/jenkins-docker'
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Clone the GitHub repository
                git 'https://github.com/Eklavya163940/Jenkins-Docker-Day14.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    docker.build(DOCKER_IMAGE_NAME)
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    // Push Docker image to DockerHub
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_CREDENTIALS_ID) {
                        docker.image(DOCKER_IMAGE_NAME).push('latest')
                    }
                }
            }
        }
        
        stage('Deploy Container') {
            steps {
                script {
                    // Deploy the Docker container
                    sh """
                    docker run -d --name jenkins-docker-container -p 8080:8080 $DOCKER_IMAGE_NAME:latest
                    """
                }
            }
        }
    }
    
    post {
        always {
            // Clean up Docker resources
            sh 'docker system prune -f'
        }
    }
}
