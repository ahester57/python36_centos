#!/bin/bash

sudo yum install https://centos7.iuscommunity.org/ius-release.rpm &&
sudo yum update &&
sudo yum install python36u python36u-libs python36u-devel python36u-pip &&
echo
echo "Python version:"
python3.6 -V

