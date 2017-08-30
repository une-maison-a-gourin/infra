#!/bin/bash

sudo docker pull jenkins/jenkins:lts-alpine
sudo docker run -p 8080:8080 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts

