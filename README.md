
# Personal CentOS 7 Ansible

Ansible configuration for my personal CentOS 7 VMs.

## Usage

First, you need to create a GitHub Personal access token. Then run:

```bash
> echo github_pat: <your pat> > ~/.ansible_vars.yml
> sudo yum -y install git ansible
> sudo ansible-pull -U https://github.com/rkm/personal-centos7-ansible
```
