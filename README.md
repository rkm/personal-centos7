
# Personal CentOS 7 Ansible

Ansible configuration for my personal CentOS 7 VMs.

## Usage

### Automatic

```bash
> wget -q -O - https://raw.githubusercontent.com/rkm/personal-centos7-ansible/master/install.sh | bash
```

### Manual

```bash
> sudo yum -y install git epel-release ansible
> ansible-galaxy install -r requirements.yml
> ansible-pull -U https://github.com/rkm/personal-centos7-ansible
```

The `all-repos-clone` task is disabled by default. To enable it, you need to first create a GitHub Personal access token. Then run:

```bash
> echo github_pat: <your pat> > ~/.ansible_vars.yml
> au --tags all-repos-clone
```

Note that this may take some time as it will clone/update ***all*** your repos (i.e. orgs, collaborations, forks, private). This can be configured in `files/all-repos.json`. See https://github.com/asottile/all-repos.

## Configuration

See `vars/main.yml` for configurable settings. You should at least change the `username`.

## TODO

- mvn
