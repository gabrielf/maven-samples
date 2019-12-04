pipeline {
    agent {
        label 'master'
    }
    tools { 
        maven 'maven' 
        jdk 'java8' 
    }

    stages {
        stage('Clean workspace') {
            steps{
                cleanWs()
            }
        }

        stage('Checkout from Github') {
          steps{
               checkout([$class: 'GitSCM', branches: [[name: '*/mr-maven']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/fuz-rahm/maven-samples.git']]])
            }
        }
        stage ('Unit Test') {
            steps{
                sh 'mvn clean verify'
            }
        }
        stage ('Lighthouse'){
            steps{
                sh 'lighthouse-batch -s https://google.com,https://cynerge.com'
                sh 'ls report/lighthouse'
                lighthouseReport './report/lighthouse/google_com.report.json'
                lighthouseReport './report/lighthouse/cyngerge_com.report.json'
            }
        }
        stage('Pa11y') {
            steps {
                sh 'npm run build-pa11y'
            }
        }
    }
}
