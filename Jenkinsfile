pipeline {
    agent any
    tools {
            maven 'maven'
        }
    stages {
        stage('Checkout source code') {
            steps {
                script {
                    git branch: 'master',
                        url: 'https://github.com/PandaReveluv/nd035-c3-data-stores-and-persistence-project-starter'
                    sh "ls -lat"
                }
            }
        }
        stage('Running UnitTest') {
            steps {
                sh 'mvn -f starter/critter/pom.xml -U install test'
            }
        }
        stage('Echo done') {
            steps {
                sh 'echo =====Done======'
            }
        }
    }
}
