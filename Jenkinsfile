pipeline {
    agent {
        label 'master'
    }
    tools {
        maven 'maven'
        jdk 'java8'
        nodejs "Node10"
    }
    stages {
        stage('clean workspace') {
            steps{
                cleanWs()
            }
        }

        stage('Checkout from Github') {
        
        steps{
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/fuz-rahm/simple-java-maven-app.git']]])
            }
        }
        
        stage ('Unit Test') {
            steps{
                sh 'mvn clean verify'
            }
        }
        stage ('Lighthouse'){
            steps{
                sh 'lighthouse-batch -s https://cynerge.com'
                sh 'ls report/lighthouse'
                lighthouseReport './report/lighthouse/cynerge_com.report.json'
            }
        }
        stage('Pa11y') {
            steps {
                sh 'pa11y -r csv https://cynerge.com --no-sandbox'
                }

        }
        stage("build & SonarQube analysis") {
          node {
              withSonarQubeEnv('My SonarQube Server') {
                 sh 'mvn clean package sonar:sonar'
              }
          }
      }

      stage("Quality Gate"){
          timeout(time: 1, unit: 'HOURS') {
              def qg = waitForQualityGate()
              if (qg.status != 'OK') {
                  error "Pipeline aborted due to quality gate failure: ${qg.status}"
              }
          }
      }

                
            stage {
        stage('SCM') {
            steps {
                git url: 'https://github.com/foo/bar.git'
            }
        }
                }
            }

            }
            