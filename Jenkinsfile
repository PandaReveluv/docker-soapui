pipeline {
    agent any
    tools {
            maven 'maven'
        }
    stages {
        stage('Checkout source code') {
            steps {
                script {
                    git branch: 'main',
                        url: 'https://github.com/PandaReveluv/nd035-c1-spring-boot-basics-project-starter'
                    sh "ls -lat"
                }
            }
        }
        stage('Running UnitTest') {
            steps {
                sh 'mvn -f starter/cloudstorage/pom.xml -U install test'
            }
        }
        stage('Example stage 2') {
            steps {
                sh 'echo done'
            }
        }
    }
}
