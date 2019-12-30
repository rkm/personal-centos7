#!/bin/bash

set -ev

sudo yum -y install epel-release && sudo yum -y install git ansible
wget -q https://raw.githubusercontent.com/rkm/personal-centos7-ansible/master/requirements.yml
ansible-galaxy install -r requirements.yml
rm requirements.yml
ansible-pull -U https://github.com/rkm/personal-centos7-ansible --tags=python
