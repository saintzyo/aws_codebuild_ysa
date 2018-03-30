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
        sh 'docker build -t test/$BRANCH_NAME:$GIT_COMMIT .'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Build stage'
        sh 'docker run -d test/$BRANCH_NAME:$GIT_COMMIT'
      }
    }
  }
}
