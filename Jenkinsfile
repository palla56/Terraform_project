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
                }
            }
        }

        stage('Run Terraform Commands') {
            steps {
                script {
                    // Run Terraform commands in the Docker container
                    sh "/usr/local/bin/docker image('name')"
                }
            }
        }
    }
}