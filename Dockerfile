FROM centos:centos7.9.2009
USER root
RUN apt-get update & apt-get install wget -y
RUN wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum upgrade
# Add required dependencies for the jenkins package
RUN yum install java-11-openjdk
RUN yum install jenkins

-------------------------------------------------
FROM centos:centos7.9.2009
RUN yum install epel-release -y
RUN yum install java-1.8.0-openjdk -y
RUN yum install wget -y
RUN wget --no-check-certificate -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.$
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
# RUN yum upgrade
# Add required dependencies for the jenkins package
# RUN yum install java-11-openjdk
RUN yum install jenkins -y

# RUN apt-get update && apt-get install -y wget
# RUN wget -O /opt/apache-maven-3.8.6-bin.tar.gz https://dlcdn.apache.org/maven/maven$
# RUN tar xzvf /opt/apache-maven-3.8.6-bin.tar.gz -C /opt/
# RUN mv /opt/apache-maven-3.8.6 /opt/maven
# ENV MAVEN_HOME /opt/maven


