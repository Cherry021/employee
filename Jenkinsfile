node {
    def app

    stage('Cloning the Repository') {
        checkout scm
    }
    stage('Build Image') {
        app = docker.build('charan-react-app')
    }
    stage('pushing the image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
        echo "Trying to push Docker build to Docker Hub"
    }
}