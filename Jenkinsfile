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
                dir('/var/jenkins_home/workspace/terraform-jenkins') {
                    // Initialize the Terraform working directory
                    sh '''
                    whoami
                    chown root:root /var/jenkins_home/workspace/terraform-jenkins/*
                    chmod 777 /var/jenkins_home/workspace/terraform-jenkins/*
                    /var/jenkins_home/workspace/terraform-jenkins terraform init
                    '''
                }
            }
        }
    }
}
