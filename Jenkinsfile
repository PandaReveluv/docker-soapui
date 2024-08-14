pipeline {
    agent any
    stages {
        stage('Checkout source code') {
            steps {
                script {
                    git branch: 'main',
                        url: 'https://github.com/PandaReveluv/nd035-c1-spring-boot-basics-project-starter'
                }
            }
        }
        stage('Running UnitTest') {
            steps {
                sh 'cd starter/cloudstorage'
                sh 'mvn -U install test'
            }
        }
        stage('Example stage 2') {
            steps {
                sh 'echo done'
            }
        }
    }
}
