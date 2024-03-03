pipeline {
  agent any

  stages {
    stage('Build Docker Image') {
      steps {
        script {
          docker.build('terraform-demo')
        }
      }
    }

    stage('Terraform Deployment') {
      steps {
        script {
          docker.image('terraform-demo').inside {
            sh './run-terraform.sh'
          }
        }
      }
    }
  }

  post {
    always {
      script {
        docker.image('terraform-demo').remove()
      }
    }
  }
}
