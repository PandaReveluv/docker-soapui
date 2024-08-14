pipeline {
    agent any
    stages {
        stage('Initialize Docker') {
                steps {
                    script {
                        def dockerHome = tool 'docker'
                        env.PATH = "${dockerHome}/bin:${env.PATH}"
                    }
                }
        }
        stage('Checkout source code') {
            steps {
                script {
                    git branch: 'main',
                        url: 'https://github.com/PandaReveluv/docker-soapui.git'
                }
            }
        }
        stage('Testing') {
            steps {
                sh 'bin/test.sh'
            }
        }
        stage('Example stage 2') {
            steps {
                sh 'echo done'
            }
        }
    }
}
