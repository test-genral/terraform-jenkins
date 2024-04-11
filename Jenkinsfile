pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/test-genral/terraform-jenkins.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                dir("${WORKSPACE}") {
                    sh 'echo $PATH'
                    sh 'terraform init'
                }
            }
        }
    }
}
