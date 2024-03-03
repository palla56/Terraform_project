pipeline {
    agent any
    environment {
        DOCKER_REGISTRY_CREDENTIAL = 'palla56'
        DOCKER_IMAGE_NAME = 'your_image_name'
        DOCKER_IMAGE_TAG = 'your_image_tag'
        DOCKER_TEST = 'https://docker-desktop.local/'
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                  sh '/usr/local/bin/docker build --tag name:tag .'
                  //sh '/usr/local/bin/docker push palla56/repository_name:docker-jenkins-integration'
                  //sh '/usr/local/bin/docker.build("terra:tag")'
                  sh "/usr/local/bin/docker withRegistry(${DOCKER_TEST}, ${DOCKER_REGISTRY_CREDENTIAL}) {
                        docker.image("name:tag").push()
                  }"
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