pipeline {
    agent {
        docker 'python:3.10-bullseye'
    }

    stages {
        stage('Hello') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/dev']],
                    userRemoteConfigs: [[url: 'https://github.com/Oscarce10/fastapiTemplateProject.git/']]])
                sh '''
                    python -m pip install --upgrade pip
                    pip install flake8
                    flake8 .
                '''
            }
        }
    }
}

