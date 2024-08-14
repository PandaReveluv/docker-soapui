pipeline {
    agent any
    stages {
        stage('Checkout source code') {
            steps {
                script {
                    git branch: 'main',
                        url: 'https://github.com/PandaReveluv/docker-soapui.git'
                }
            }
        }
        stage('Example stage 1') {
            steps {
                sh 'docker --version'
            }
        }
        stage('Example stage 2') {
            steps {
                sh 'echo done'
            }
        }
    }
}
