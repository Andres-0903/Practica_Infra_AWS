pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = 'us-east-1'
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'Infa_AWS',
                credentialsId: 'github-credentials',
                url: 'https://github.com/Andres-0903/Practica_Infra_AWS.git'
            }
        }
        
        stage('Init Terraform') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Plan Terraform') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        
        stage('Apply Terraform') {
            steps {
                input message: '¿Deseas aplicar los cambios en AWS?'
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
    
    post {
        success {
            echo '✅ Despliegue completado con éxito en AWS'
        }
        failure {
            echo '❌ Error en el pipeline'
        }
    }
}
