
# Personal CentOS 7 Ansible

Ansible configuration for my personal CentOS 7 VMs.

## Usage

First, you need to create a GitHub Personal access token. Then run:

```bash
> echo github_pat: <your pat> > ~/.ansible_vars.yml
> sudo yum -y install git ansible
> sudo ansible-pull -U https://github.com/rkm/personal-centos7-ansible
```

The `all-repos-clone` task is disabled by default. It can be run with:

```bash
> au --tags all-repos-clone
```

Note that this may take some time as it will clone *all* your repos (i.e. orgs, collaborations, forks, private). This can be configured in `files/all-repos.json`. See https://github.com/asottile/all-repos.

## Configuration

See `vars/main.yml` for configurable settings. You should at least change the `username`.
