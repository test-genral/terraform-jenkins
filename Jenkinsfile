pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the Terraform code from your GitHub repository
                git branch: 'main', url: 'https://github.com/test-genral/terraform-jenkins.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                // Change directory to the Terraform code directory
                dir('/home/einfochips/jenkins_home/workspace/terraform-jenkins') {
                    // Initialize the Terraform working directory
                    sh 'terraform init'
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                // Change directory to the Terraform code directory
                dir('/home/einfochips/jenkins_home/workspace/terraform-jenkins') {
                    // Generate and display an execution plan for Terraform
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                // Change directory to the Terraform code directory
                dir('/home/einfochips/jenkins_home/workspace/terraform-jenkins') {
                    // Apply the Terraform execution plan to create or update infrastructure
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }
}
