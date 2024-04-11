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
                sh '''
                cd /home/einfochips/jenkins_home/workspace/terraform-jenkins 
                echo $PATH
                which terraform
                printenv

                // ls -alh && pwd
                // terraform init
                // terraform plan -out=tfplan
                // terraform apply -auto-approve tfplan
                
                '''
                }
            }
        }
    }
}
