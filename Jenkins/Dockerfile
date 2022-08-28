# RMIT University Vietnam
# Course: COSC2767 Systems Deployment and Operations
# Semester: 2022B
# Assessment: Assignment 2
# Author: Nguyen Thanh Thien
# ID: S3817852
# Created  date: 18/08/2022 
# Last modified: 28/08/2022  
# Acknowledgement: Acknowledge the resources that you use here. 

FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y wget
RUN wget -O /opt/apache-maven-3.8.6-bin.tar.gz https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz
RUN tar xzvf /opt/apache-maven-3.8.6-bin.tar.gz -C /opt
RUN mv /opt/apache-maven-3.8.6 /opt/maven

RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get clean

USER jenkins
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

# disable the setup wizard as we will set up jenkins as code :)
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# copy the config-as-code yaml file into the image
COPY jenkins-casc.yaml /var/jenkins_home/jenkins-casc.yaml
# tell the jenkins config-as-code plugin where to find the yaml file
ENV CASC_JENKINS_CONFIG /var/jenkins_home/jenkins-casc.yaml
ENV MAVEN_HOME /opt/maven
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
