pipeline {
    agent any

    environment {
		DOCKERHUB_CREDENTIALS=credentials('docker_hub-php')
	}
    stages {
        stage('** CLONING CODE  **') {
            steps {
                git branch: 'main', credentialsId: 'git_hub', url: 'https://github.com/dheerendrabhandari8/jekins_php.git'
           }
}

stage ('Run docker Compose'){
steps {
sh 'cd /var/lib/jenkins/workspace/php_project'
// sh 'docker-compose up -d'
sh 'docker build -t dheerendrabhandari/php-project1:latest .'
}
}
stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
    stage('Push') {

			steps {
				sh 'cd /var/lib/jenkins/workspace/php_project'
				sh 'docker push dheerendrabhandari/php-project1:latest'
			}
		}
    }
} 
