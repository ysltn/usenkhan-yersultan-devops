pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Yersultan'
        STUDENT_SURNAME = 'Usenkhan'
        STUDENT_GROUP = 'IT2-2310'
        STUDENT_ID = '38064'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Checking project files'
                sh 'test -f Dockerfile && test -f app/app.py'
            }
        }

        stage('Test') {
            steps {
                sh '''
                    grep -q "Application is running successfully!" app/app.py
                    echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                    echo "Group: ${STUDENT_GROUP}"
                    echo "Student ID: ${STUDENT_ID}"
                '''
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t usenkhan-yersultan-devops:${BUILD_NUMBER} .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                    docker run --rm \
                      --name usenkhan-yersultan-ci-${BUILD_NUMBER} \
                      -e STUDENT_NAME="${STUDENT_NAME}" \
                      -e STUDENT_SURNAME="${STUDENT_SURNAME}" \
                      -e STUDENT_GROUP="${STUDENT_GROUP}" \
                      -e STUDENT_ID="${STUDENT_ID}" \
                      usenkhan-yersultan-devops:${BUILD_NUMBER}
                '''
            }
        }
    }
}
