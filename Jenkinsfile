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

stage ('docker build'){
steps {
//sh 'cd /var/lib/jenkins/workspace/php_project'
sh 'docker build -t dheerendrabhandari/php-project:v1 .'
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
				sh 'docker push dheerendrabhandari/php-project:v1'
				sh 'docker pull dheerendrabhandari/php-project:v1'
			
			}
		}
//	     stage('k8s') {

// 			steps {
//    kubernetesDeploy configs: 'kubernetes-menifest.yml', 
// 		    kubeconfigId: 'k8s-conf',
//                     enableConfigSubstitution: true
// 			}
// } 
    }
}
