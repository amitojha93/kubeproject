FROM dokken/amazonlinux-2
MAINTAINER amitojha93
WORKDIR /opt
Add 'https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.88/bin/apache-tomcat-8.5.88.zip' /opt/
RUN yum install unzip -y
RUN yum install telnet -y
RUN yum install vim -y
RUN unzip apache-tomcat-8.5.88.zip
RUN chmod +x apache-tomcat-8.5.88/bin/*
RUN amazon-linux-extras install java-openjdk11 -y
COPY ./sample.war /opt/apache-tomcat-8.5.88/webapps/
CMD [ "/opt/apache-tomcat-8.5.88/bin/catalina.sh", "run" ]
