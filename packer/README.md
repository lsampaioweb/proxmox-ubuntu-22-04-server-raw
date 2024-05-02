# proxmox-ubuntu-22-04-server-raw
Project with Packer and Ansible scripts to create an Ubuntu template on Proxmox from an ISO file with the bare minimum packages and updates.

This repository uses sub-modules:<br/>
1. [packer-proxmox-ubuntu-22-04-iso](https://github.com/lsampaioweb/packer-proxmox-ubuntu-22-04-iso "packer-proxmox-ubuntu-22-04-iso").
1. [ansible-common-tasks](https://github.com/lsampaioweb/ansible-common-tasks "ansible-common-tasks").
1. [ansible-kvm-cloud-init](https://github.com/lsampaioweb/ansible-kvm-cloud-init "ansible-kvm-cloud-init").

In order to download all the submodules, you have to run the followinng commands:

```bash
  git submodule --init
  git pull --recurse-submodules

  # Or in just one line:
  git submodule update --init --recursive
```

Run these commands on the computer that is running Packer:

```bash
01 - Save the password of the root Proxmox user in the secret manager.
  secret-tool store --label="proxmox-root-password" password "proxmox-root-password"

02 - Confirm the password was correctly saved in the secret manager.
  secret-tool lookup password "proxmox-root-password"
```

Run these commands to execute Packer:

```bash
  cd packer
#   ./pkr.sh $1 $2 $3 $4
#   $1 -> validate or build.
#   $2 -> home or homelab.
#   $3 -> abort, ask, run-cleanup-provisioner or cleanup.
#   $4 -> debug.
#   e.g:
#   ./pkr.sh validate home ask debug
  ./pkr.sh validate home ask debug
```

#
### Created by:

1. Luciano Sampaio.
