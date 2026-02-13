pipeline {
    agent any

    environment {
        DOCKERHUB = "yourdockerhub"
        SONAR_TOKEN = "your_sonar_token"
    }

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/YOUR_USERNAME/hello-devops.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('SonarQube') {
            steps {
                sh "mvn sonar:sonar -Dsonar.login=$SONAR_TOKEN"
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $DOCKERHUB/hello-devops:latest .'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker login -u yourdockerhub -p yourpassword'
                sh 'docker push $DOCKERHUB/hello-devops:latest'
            }
        }
    }
}
