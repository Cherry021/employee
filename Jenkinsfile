pipeline{
    agent{
        docker{
            image 'node:6-alpine'
            args '-p 3000:3000'
        }
    }
    environment{
        CI = 'true'
    }
    stages{
        stage('Build'){
            steps{
                sh 'npm install'
            }
        }
        stage('Test'){
            steps{
                sh './tests/test.sh'
            }
        }
        stage('Deliver'){
            steps{
                sh './delivers/deliver.sh'
                input message: 'Finished website deployment. Click proceed to continue'
                sh './delivers/kill.sh'
            }
        }
    }
}