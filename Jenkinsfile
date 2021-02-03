pipeline {
	agent {
		docker {
			image 'python:3.7.2'
			args '-u root'
		}
	}
	stages {
		stage('Set up') {
			steps {
				script {
					sh 'rm -rf sba.kubernetes-cluster'
				}
			}
		}
		stage('SCM Checkout') {
			steps {
				script {
					sh 'git clone https://github.com/mvakkasoglu/sba.kubernetes-cluster.git'
				}
			}
		}
		stage('build') {
			steps {
				script {
				    dir('./sba.kubernetes-cluster') {
				        sh 'pip install -r requirements.txt'
				    }
			    }
			}
		}
		stage('run') {
			steps {
				script {
				    dir('./sba.kubernetes-cluster') {
				        sh 'python3 web.py'
				    }
			    }
			}
		}
	}
}
