FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
#COPY ./*.war /usr/local/tomcat/webapps
COPY webapp/target/*.war /usr/local/tomcat/webapps/
#COPY target/*.war /usr/local/tomcat/webapps/


