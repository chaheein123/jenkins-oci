#!/bin/bash

yum update -y
yum install wget -y
yum install java-1.8.0-openjdk-devel -y
yum install maven -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
yum upgrade -y
yum install jenkins -y
systemctl daemon-reload
systemctl start jenkins
