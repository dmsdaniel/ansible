#!/bin/bash
sudo apt-get --assume-yes update 
sudo apt-get --assume-yes install software-properties-common 
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get --assume-yes update 
sudo apt-get --assume-yes install ansible
