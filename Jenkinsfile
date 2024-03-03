pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from your version control system
                git 'https://github.com/palla56/Terraform_project.git'
            }
        }

        stage('Build') {
            steps {
                // Build your project (replace 'npm install' with your build command)
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                // Run tests (replace 'npm test' with your test command)
                sh 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                // Perform deployment steps (replace 'kubectl apply' with your deployment command)
                sh 'kubectl apply -f your-deployment.yaml'
            }
        }
    }

    post {
        success {
            // Actions to perform when the pipeline is successful
            echo 'Pipeline successfully completed!'
        }
        failure {
            // Actions to perform when the pipeline fails
            echo 'Pipeline failed!'
        }
    }
}