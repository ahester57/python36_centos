#!/bin/bash

sudo yum install https://centos7.iuscommunity.org/ius-release.rpm
sudo yum check-update &&
sudo yum install python36u python36u-libs python36u-devel python36u-pip &&
echo
echo "Python version:"
python3.6 -V
echo "pip version:"
pip3.6 -V

while true; do
    read -p "Update PIP now? " answer
    case $answer in
        y|Y|yes|YES)
            echo "Updating" &&
            sudo python3.6 -m pip install --upgrade pip
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac
done

while true; do
    read -p "Install PIPENV now? " answer
    case $answer in
        y|Y|yes|YES)
            echo "Installing..." &&
            sudo -H pip3.6 install pipenv
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac
done

