pipeline {
    agent {
       label "dockerContainer"
    }
    environment {
        AWS_ACCESS_KEY_ID     = credentials('jenkins-aws-secret-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('jenkins-aws-secret-access-key')
    }
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
                //
            }
        }
    }
}
