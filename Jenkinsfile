pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Anushkaraman/DSA_Game.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('html-app')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('html-app').run('-p 8084:80')
                }
            }
        }
    }
}
