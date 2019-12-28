#!/bin/bash

set -ev

sudo yum -y install git epel-release ansible
ansible-galaxy install -r requirements.yml
ansible-pull -U https://github.com/rkm/personal-centos7-ansible
