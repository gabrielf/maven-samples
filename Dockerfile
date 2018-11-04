FROM tomcat:7
# copy the war files from jenkins to docker image
ADD target/*.war /usr/local/tomcat/webapps
ADD tomcat-user.xml /usr/local/tomcat/conf/
