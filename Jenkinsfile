pipeline {
    agent any

    environment {
        TF_CLI_ARGS = "-input=false"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the Terraform project from version control
                git 'https://github.com/palla56/Terraform_project.git'
            }
        }

        stage('Initialize') {
            steps {
                // Initialize the Terraform working directory
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Plan') {
            steps {
                // Create an execution plan
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Apply') {
            steps {
                // Apply the changes
                script {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }

        stage('Destroy') {
            steps {
                // Destroy the infrastructure (optional, use with caution)
                script {
                    sh 'terraform destroy -auto-approve'
                }
            }
        }
    }

    post {
        always {
            // Clean up artifacts
            deleteDir()
        }
    }
}