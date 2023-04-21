pipeline {
    agent any
    
    environment {
        // DOCKER_HUB_CREDENTIALS = credentials('dckr_pat_vmnN7HkHuFQu9NtpASOY5N9RPp8')
        IMAGE_NAME = 'fisrtIm'
        GIT_URL = 'https://github.com/khadimaw3/DevOpsProject.git'
    }
    
    stages {
        stage('Cloner le code depuis Git') {
            steps {
                git branch: 'main',
                    //credentialsId: 'votre-credential-git',
                    url: GIT_URL
            }
        }
        
        stage('Construction de l\'image Docker') {
            steps {
                script {
                    docker.build("${DOCKER_HUB_CREDENTIALS_USR}/${IMAGE_NAME}:${env.BUILD_NUMBER}")
                }
            }
        }
        
       /* stage('Pousser l\'image Docker vers Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://hub.docker.com/repository/docker/khadimaw/devopsproject-2023/general', 'docker-hub') {
                        dockerImagePush("${DOCKER_HUB_CREDENTIALS_USR}/${IMAGE_NAME}:${env.BUILD_NUMBER}")
                    }
                }
            }
        } */
    }
}
