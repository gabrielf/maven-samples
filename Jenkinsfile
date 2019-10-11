node{ 
    stage{ 'SCM checkout' }{
      git 'https://github.com/gabrielf/maven-samples/new/master'
    }
    stage{ 'Compile Package' }{
     def defaultmaven = tool name: 'defaultmaven', type: 'maven'
     sh 'mvn package'
    }
}
