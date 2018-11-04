FROM tomcat:8
# copy the war files from jenkins to docker image
ADD target/*.war /usr/local/tomcat/webapps
