#!/bin/bash
sudo mkdir -p /var/jenkins_home && sudo chown -R 1000:1000 /var/jenkins_home/
sudo docker run -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock --name jenkins -d jenkins
