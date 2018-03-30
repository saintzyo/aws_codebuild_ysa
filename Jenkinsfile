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
        script {
          if (env.BRANCH_NAME == 'jenkins') {
            echo "Not jenkins branch!"
            git url: 'https://github.com/saintzyo/ansible-role-nginx.git'
            sh 'pwd'
            sh 'ls -la'
            sh 'ls -la ..'
          }
          else {
            sh 'docker run -d test/$BRANCH_NAME:$GIT_COMMIT'
          }
        }        
      }
    }
  }
}
