# RMIT University Vietnam
# Course: COSC2767 Systems Deployment and Operations
# Semester: 2022B
# Assessment: Assignment 2
# Author: Nguyen Thanh Thien
# ID: S3817852
# Created  date: 18/08/2022 
# Last modified: 28/08/2022  
# Acknowledgement: Acknowledge the resources that you use here. 

FROM centos:centos7.9.2009
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz /opt/tomcat
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.65/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
