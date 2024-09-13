pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Anushkaraman/DSA_Game.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('html-app')  // Build Docker image from Dockerfile
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('html-app').run('-p 8080:80')  // Run the container
                }
            }
        }
    }
}
