#!/bin/bash

set -ev

sudo yum -y install epel-release && sudo yum -y install git ansible
git clone --depth=1 https://github.com/rkm/personal-centos7-ansible
cd personal-centos7-ansible
ansible-galaxy install -r requirements.yml
ansible-playbook local.yml
