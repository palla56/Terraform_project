pipeline {
    agent any
    
    environment {
        AWS_DEFAULT_REGION = 'us-east-1'  // Set your desired AWS region
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout the source code from version control
                    checkout scm
                }
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    // Run Terraform init
                    sh '/opt/homebrew/bin/terraform init'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    // Run Terraform apply with auto-approve
                    sh '/opt/homebrew/bin/terraform apply -auto-approve'
                }
            }
        }
    }
/*
    post {
        always {
            // Clean up resources or perform post-deployment actions if needed
            script {
                // For example, destroy resources after deployment
                sh '/opt/homebrew/bin/terraform destroy -auto-approve'
            }
        }
    }
    */
}