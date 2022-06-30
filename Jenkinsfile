pipeline{
    agent any
    tools{
        maven 'maven_3_8_6'
    }
    stages {
        stage('Maven Build') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/hussainshahzad250/jenkins-automation.git']]])
                bat 'mvn clean install'
            }
        }
         stage('Build Docker Image') {
            steps {
				script{                
                	bat 'docker build -t shahzadsastech/app .'
                }
            }
        }
     }
}