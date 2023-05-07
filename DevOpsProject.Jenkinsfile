pipeline {
    agent any
    
    environment {
        //DOCKER_HUB_CREDENTIALS = credentials('dckr_pat_vmnN7HkHuFQu9NtpASOY5N9RPp8')
        IMAGE_NAME = 'fisrtIm'
        GIT_URL = 'https://github.com/khadimaw3/DevOpsProject.git'
        my_registry= '210650517739.dkr.ecr.us-west-2.amazonaws.com/devopsproject'
    }
    
    stages { 
        stage('Cloner le code depuis Git') {
            steps {
                git branch: 'main',
                url: GIT_URL
            }
        }
        
        stage('Construction de l\'image Docker') {
            steps {
                script {
                    docker.build my_registry
                }
            }
        }
        
        stage("Pushing Docker image into ECR") {
            steps {
                 script {
                sh "aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 210650517739.dkr.ecr.us-west-2.amazonaws.com"
                sh "docker push 210650517739.dkr.ecr.us-west-2.amazonaws.com/devopsproject:latest"
                }
            }
        }
        stage('Install Ansible') {
            steps {
                // Install Ansible on the Jenkins agent
                sh 'pip install ansible'
             }
        }
        stage('Run Ansible playbook') {
            steps {
                // Run Ansible playbook
                sh "ansible-playbook -i host.txt my-playbook.yaml"
            }
        }
    }
}
