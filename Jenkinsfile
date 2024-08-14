export MAVEN_HOME=/opt/maven
export PATH=$PATH:$MAVEN_HOME/bin
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
                sh 'mvn -f /starter/cloudstorage/pom.xml -U install test'
            }
        }
        stage('Example stage 2') {
            steps {
                sh 'echo done'
            }
        }
    }
}
