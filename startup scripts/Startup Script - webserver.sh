#!/usr/bin/bash

# Install Packages
sudo yum -y update
sudo yum install -y tree python3
sudo amazon-linux-extras install -y java-openjdk11
sudo amazon-linux-extras install -y nginx1
sudo yum install -y java-11-openjdk-devel


# Configure/Install Custom Software
# wget...
# git....
# cp...

# Start/Enable Services
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl stop postfix
sudo systemctl disable postfix

export IMAGE_GALLERY_BOOTSTRAP_VERSION="1.0"

aws s3 cp s3://edu.au.cc.image-gallery-config-justin/ec2-prod-latest.sh ./
/usr/bin/bash ec2-prod-latest.sh

