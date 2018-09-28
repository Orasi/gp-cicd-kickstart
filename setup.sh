#!/bin/bash

sudo yum check-update
sudo yum install -y git
sudo curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker $(whoami)
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo yum install epel-release -y
sudo yum install -y python-pip -y
sudo pip install docker-compose 
sudo yum upgrade python* -y
sudo git clone https://github.com/Orasi/gp-cicd-kickstart.git
