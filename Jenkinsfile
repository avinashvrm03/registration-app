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
        git branch: 'master', credentialsId: 'personal-github-account-login', url: 'https://github.com/avinashvrm03/registration-app.git'
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
  }
}
