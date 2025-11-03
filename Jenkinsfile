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
                dir('Prueba_Infra_AWS/Infra_AWS_1') {
                    sh 'terraform init'
                }
            }
        }
        
        stage('Plan Terraform') {
            steps {
                dir('Prueba_Infra_AWS/Infra_AWS_1') {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        
        stage('Apply Terraform') {
            steps {
                input message: '¿Deseas aplicar los cambios en AWS?'
                dir('Prueba_Infra_AWS/Infra_AWS_1') {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
        
        stage('Destroy Terraform') {
            steps {
                input message: '¿Deseas destruir la infraestructura en AWS?'
                dir('Prueba_Infra_AWS/Infra_AWS_1') {
                    sh 'terraform destroy -auto-approve'
                }
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
