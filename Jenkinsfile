pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    docker.build('terraform-local-image')
                }
            }
        }

        stage('Run Terraform Commands') {
            steps {
                script {
                    // Run Terraform commands in the Docker container
                    docker.image('terraform-local-image').inside {
                        sh 'terraform init'
                        sh 'terraform plan'
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }

  /*  post {
        always {
            // Clean up - remove Docker container
            script {
                docker.image('terraform-local-image').remove()
            }
        }
    }*/
}