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
                    def res = sh '''
                            cd terraform/Yocto-Build-Agent
                            terraform init
                            terraform apply -auto-approve"
                        '''
                }
            }
        }
    }
}
