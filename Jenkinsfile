pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               git branch: 'main',
               url: 'https://github.com/abinoveramesh20/Capstone.git'
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                // Granting executable permissions to the build script
                sh 'chmod +x deploy.sh'

                // Building the Docker image using the build script
                sh './deploy.sh'

              
            }
        }
    }
} 

