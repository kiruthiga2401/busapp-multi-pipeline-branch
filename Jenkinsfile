pipeline {
    agent any
    stages {
        stage('Docker Build') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh '''
                        echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
                        chmod +x docker-build.sh
                        sh docker-build.sh
                    '''
                }
            }
        }
        stage('Deploy Env') {
            steps {
                sh '''
                    chmod +x docker-deploy.sh
                    sh docker-deploy.sh
                '''
            }
        }
    }
}
