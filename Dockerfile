FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ADD apache-tomcat-8.5.38.tar.gz /root
COPY target/myweb-8.2.0.war /root/apache-tomcat-8.5.38/webapps
ENTRYPOINT /root/apache-tomcat-8.5.38/bin/startup.sh && bash

