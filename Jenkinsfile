pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                  sh '/usr/local/bin/docker build palla56/repository_name:docker-jenkins-integration'
                  sh '/usr/local/bin/docker push palla56/repository_name:docker-jenkins-integration'
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