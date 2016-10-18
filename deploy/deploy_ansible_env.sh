#!/bin/sh

#############################################################################################
#    Objectives: A sciprt to install ansible env
#        Author: Wendell
#  CreationDate: 2016/10/12
#         Usage: ./deploy_ansible_env.sh
#############################################################################################


## check python version

## install python


## install git
sudo easy_install pip

## install ansible use yum
sudo yum -y update
sudo yum -y install ansible

ret=$?

if [ ! ${ret} -eq  0 ]; then

    ## if rpm is not found , check if new version release
    sudo rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
    sudo yum -y update
    sudo yum -y install ansible
    #ansible-galaxy install -f  -r ~/working/requirements.yml -p ~/working/roles
fi
