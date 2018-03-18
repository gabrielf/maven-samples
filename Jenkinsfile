node(){

 stage 'clone'
   checkout scm
   bat 'dir'
 stage 'compile'
    bat 'mvn compile'
 stage 'test'
   bat 'mvn test'
 stage 'SonarQube'
  bat 'Run command'
 stage 'Nexus upload'
 bat 'Run commamd'
 stage 'Docker Build'
 bat 'Command'
 stage 'Image upload'
 bat 'Command'
}
