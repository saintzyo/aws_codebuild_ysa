pipeline {
  agent any
    
  stages {
    stage('Build') {
      steps {
        echo "Build stage..."
        sh 'docker ps'
      }
    }
    stage('Test') {
      steps {
        echo 'Test stage...'
        sh 'printenv'
      }
    }
  }
}
