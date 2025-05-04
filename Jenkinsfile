pipeline {
  agent { label "Jenkins-Agent" }
  tools {
    jdk 'Java21'
    maven 'Maven3'
  }
  stages {
    stage("Cleanup Workspace") {
      steps {
         cleanWs()
      }
    }
    stage("Checkout SCM") {
      steps {
        git branch: 'Main', credentialsID: 'github', url: 'git@github.com:avinashvrm03/registration-app.git'
      }
    }
    stage("Build Application") {
      steps {
        sh "mvn clean pacakge"
      }
    }
    stage("Test Application") {
      steps{
        sh "mvn test"
      }
    }
    
  }
}
