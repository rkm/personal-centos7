
[![Build Status](https://travis-ci.org/rkm/personal-centos7.svg?branch=master)](https://travis-ci.org/rkm/personal-centos7)

# Personal CentOS 7 Build

Ansible configuration for my personal CentOS 7 VMs.

This is based on a fresh VirtualBox VM based on the `CentOS-7-x86_64-Minimal-1908.iso` image.

It currently requires two network adapters to be present
  - `enp0s3` - NAT adapter
  - `enp0s8` - Host-only adapter

The 3/8 naming seems to happen by default when you add the adapters in VirtualBox.

## Usage

### Automatic

```bash
> curl -Ls https://raw.githubusercontent.com/rkm/personal-centos7/master/install.sh | bash
```

### Manual

Copy & run the `install.sh` script.

## Configuration

See `vars/main.yml` for configurable settings. You should at least change the `username`.
