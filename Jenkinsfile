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
                    script {
                        // Execute the commands inside a script block
                        def res = sh '''
                            cd terraform/Yocto-Build-Agent
                            terraform init
                            terraform apply -auto-approve
                        '''
                        // Check if the sh command was successful
                        if (res != 0) {
                            error "Failed to execute Terraform commands"
                        }
                    }
                }
            }
        }
    }
}
