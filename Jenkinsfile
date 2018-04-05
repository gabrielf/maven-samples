node(){
//added
 stage 'clone'
   checkout scm
   bat 'dir'
 stage 'compile'
    bat 'mvn compile'
 stage 'test'
   bat 'mvn test'
 stage 'SonarQube'
  bat 'dir'
 stage 'Nexus upload'
 bat 'dir'
 stage 'Docker Build'
 bat 'dir'
 stage 'Image upload'
 bat 'dir'
}
