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

You have to create a Packer user, password and token. Read the documentation on the repository:
  1. [packer-proxmox-ubuntu-22-04-iso](https://github.com/lsampaioweb/packer-proxmox-ubuntu-22-04-iso "packer-proxmox-ubuntu-22-04-iso").

Run these commands to execute Packer:

```bash
  cd packer
#   ./pkr.sh $1 $2 $3 $4
#   $1 -> validate or build.
#   $2 -> 01-bare-minimum, 02-multiple-disks, 03-multiple-networks, 04-performance, 05-bios-seabios, home, or homelab.
#   $3 -> abort, ask, run-cleanup-provisioner or cleanup.
#   $4 -> debug.
#   e.g:
# ./pkr.sh validate home
# ./pkr.sh build home ask debug
  ./pkr.sh build 01-bare-minimum
  ./pkr.sh build 02-bios-seabios
  ./pkr.sh build 03-cpu
  ./pkr.sh build 04-memory
  ./pkr.sh build 05-multiple-disks
  ./pkr.sh build 06-multiple-networks
  ./pkr.sh build home
  ./pkr.sh build homelab
```

#
### Created by:

1. Luciano Sampaio.
