#!/bin/sh

#Install Docker and Start up Docker service. Must logout and 
#back in to Login to Docker
sudo yum update -y
sudo yum -y install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker

#Install Git and Pull the Application
sudo yum install git -y
#git clone https://github.com/ReneDLC/renedlc-portfolio.git