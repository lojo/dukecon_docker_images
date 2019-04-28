#!/usr/bin/env groovy
@Library('jenkins-library@master') _

pipeline {
  agent {
    node {
      label 'docker'
    }
  }

  triggers {
    pollSCM('* * * * *')
  }

  stages {
    stage('Build') {
      steps {
        sh 'docker-compose build'
      }
    }
    stage('Push') {
      steps {
        sh 'docker-compose push'
      }
    }
    stage('Clean / Build and publish documentation') {
      steps {
        withMaven {
          sh 'mvn clean package'
        }
        publishHTML target: [allowMissing         : false,
                             alwaysLinkToLastBuild: false,
                             keepAll              : true,
                             reportDir            : 'target/generated-docs/',
                             reportFiles          : 'index.html',
                             reportName           : 'Documentation']
      }
    }
  }
  post {
    always {
      sendNotification currentBuild.result
    }
    failure {
      // notify users when the Pipeline fails
      mail to: 'gerd@aschemann.net',
        subject: "Failed Docker-Maven Pipeline: ${currentBuild.fullDisplayName}",
        body: "Something is wrong with ${env.BUILD_URL}"
    }
  }
}
