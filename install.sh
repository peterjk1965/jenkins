#!/bin/bash
echo "must be ubuntu 16lts"
echo "starting installation"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install openjdk-8-jdk -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
service jenkins status
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

exit 0
