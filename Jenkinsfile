pipeline {
  agent { label "Jenkins-Agent" }
  tools {
    jdk 'Java21'
    maven 'Maven3'
  }
  stages {
    stage('Cleanup Workspace') {
      steps {
        cleanWs()
      }
    }
    stage('Checkout from SCM') {
      steps {
        git branch: 'main', credentialsId: 'personal-github-account-login', url: 'https://github.com/avinashvrm03/registration-app.git'
      }
    }
    stage('Build Application') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('Test Application') {
      steps {
        sh 'mvn test'
      }
    }
    stage('SonarQube Analysis') {
      steps {
        script {
          withSonarQubeEnv(credentialsId: 'jenkins-sonarqube-token') {
            sh 'mvn sonar:sonar'
          }
        }
      }
      
    }
  }
}
