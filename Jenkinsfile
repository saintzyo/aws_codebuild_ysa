pipeline {
  agent {
    node {
      label 'test'
    }
    
  }
  stages {
    stage('error') {
      steps {
        sh 'docker build'
      }
    }
  }
}