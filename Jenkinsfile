node ('Agent2') {
    stage('Code Check out') {
                git branch: 'master',
            
      			credentialsId: '',
                url: 'https://github.com/gabrielf/maven-samples'
    }
    stage('Compile Package') {
        sh 'mvn package'
    }
 }
