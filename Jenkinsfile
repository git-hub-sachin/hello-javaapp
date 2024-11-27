pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'my-java-app'
        DOCKER_TAG = 'latest'
    }
    
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/git-hub-sachin/hello-javaapp.git'
            }
        }
        
        stage('Build Image') {
            steps {
                script{
                    sh 'docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} .'
                }
            }
        }
        
        stage('Run Container') {
            steps {
                script{
                    sh 'docker run -d -p 4000:4000 --name ${DOCKER_IMAGE} ${DOCKER_IMAGE}:${DOCKER_TAG}'
                }
            }
        }
        
        stage('Post-Deployment') {
            steps {
                echo 'Java app is deployed and running on the server.'
        }
    }
}
post {
        always {
            echo 'Pipeline finished.'
        }
    }
}
