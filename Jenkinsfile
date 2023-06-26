pipeline {
    agent any
    stages {
        stage('** CLONING CODE  **') {
            steps {
                git branch: 'main', credentialsId: 'git_hub', url: 'https://github.com/dheerendrabhandari8/jekins_php.git'
           }
}

stage ('Run docker Compose'){
steps {
sh 'cd /var/lib/jenkins/workspace/php_project'
sh 'sudo docker-compose up -d'

}
}
}
} 
