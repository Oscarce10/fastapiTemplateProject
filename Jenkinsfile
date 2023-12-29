pipeline {
    agent {
        docker 'python:3.10-bullseye'
    }

    stages {
        stage('Hello') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/jenkins']],
                    userRemoteConfigs: [[url: 'https://github.com/Oscarce10/fastapiTemplateProject.git/']]])
                sh '''#!/bin/bash
                    python -m venv venv
                    chmod -R a+rwx venv
                    source venv/bin/activate
                    python -m pip install --upgrade pip
                    pip install flake8
                    flake8 .
                '''
            }
        }
    }
}

