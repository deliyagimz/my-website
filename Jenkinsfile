pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'docker build -t my-website .'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                // Add commands to deploy your Docker container here
                sh 'docker run -d -p 8081:80 my-website'
            }
        }
    }
    post {
        success {
            echo 'Build and Deploy successful!'
        }
        failure {
            echo 'Build or Deploy failed.'
        }
    }
}
