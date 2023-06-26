pipeline {
    agent any
    stages {
        stage('** CLONING CODE  **') {
            steps {
                git branch: 'main', credentialsId: 'git_hub', url: 'https://github.com/dheerendrabhandari8/jenkins-cicd-php-demo.git'
           }
}

stage ('Run docker Compose'){
steps {
sh 'sudo docker-compose up -d'

}
}
}
} 
