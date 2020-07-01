FROM ubuntu:latest	
	RUN add-apt-repository ppa:openjdk-r/ppa
	RUN apt-get -y update 
	RUN apt-get install openjdk-8-jdk
	RUN mkdir /usr/local/tomcat
	RUN wget https://apache.claz.org/tomcat/tomcat-9/v9.0.36/bin/apache-tomcat-9.0.36.tar.gz -O /tmp/tomcat.tar.gz
	RUN cd /tmp && tar xvfz tomcat.tar.gz
	RUN cp -Rv /tmp/apache-tomcat-9.0.36/* /usr/local/tomcat/
	EXPOSE 8080
	COPY target/exam-1.0.0.war /usr/local/tomcat/webapps/exam-1.0.0.war
	CMD /usr/local/tomcat/bin/catalina.sh run
