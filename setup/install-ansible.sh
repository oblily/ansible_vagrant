#!/bin/sh
yum install epel-release -y
#sed -i -e "3 s/^#//" -e "4 s/^/#/" /etc/yum.repos.d/epel.repo 
yum install ansible -y
