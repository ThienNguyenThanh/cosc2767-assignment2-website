RMIT University Vietnam

Course: COSC2767 Systems Deployment and Operations

Semester: 2022B
Assessment: Assignment 2

Author: Nguyen Thanh Thien

ID: S3817852

Created  date: 18/08/2022 

Last modified: 28/08/2022  

Acknowledgement: Acknowledge the resources that you use here. 



### In this folders:

- `Tomcat` folder contains Dockerfile for building Tomcat iamge.
- `Jenkins` folder contains files for building Jenkins iamge.
- `COSC2767_Assignment2_s3817852.pdf` explain all the steps for building pipeline.


### Build Tomcat Image
1. Move to Tomcat folder.
```
cd Tomcat
```
2. Execute bellow command to build tomcat:example image.
```
sudo docker build -t tomcat:example .
```
3. Build the container.
```
sudo docker run --name tomcat-container -p 8082:8080 --rm tomcat:example
```


### Build Jenkins Image
1. Move to Jenkins folder.
```
cd Jenkins
```
2. Execute bellow command to build jenkins:example image.
```
sudo docker build -t jenkins:example .
```
3. Build the container.
```
sudo docker run --name jenkins-container -p 8080:8080 --rm jenkins:example
```


