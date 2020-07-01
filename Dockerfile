FROM tomcat
COPY target/exam-1.0.0.war /usr/local/tomcat/webapps/exam-1.0.0.war
CMD ["catalina.sh", "run"]
