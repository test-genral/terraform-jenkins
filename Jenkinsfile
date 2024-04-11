pipeline {
    agent any

    environment {
        // Set the PATH variable to include the directory where Terraform is installed
        PATH = "/home/einfochips/terraform:${env.PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the Terraform code from your GitHub repository
                git branch: 'main', url: 'https://github.com/test-genral/terraform-jenkins.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                // Initialize the Terraform working directory
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                // Generate and display an execution plan for Terraform
                sh 'terraform plan -out=tfplan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                // Apply the Terraform execution plan to create or update infrastructure
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}
