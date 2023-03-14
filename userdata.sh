#!/bin/bash
hostnamectl set-hostname ${server-name}
yum update -y
amazon-linux-extras install docker -y
systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user