# proxmox-ubuntu-24-04-server-raw
Project with Ansible scripts to create an Ubuntu template on Proxmox from an ISO file with the bare minimum packages and updates.

Run the command in the terminal:
```bash
  ansible-playbook template.yml -e "password_id=ubuntu-24-04-server-raw" -e "hostname=ubuntu-24-04-server-raw"
  ansible-playbook kvm_setup.yml -e "node=edge-pve-01 vm_id=901 hotplug=disk,network,cpu storage_pool=Ceph_Gold"
```

#
### Created by:

1. Luciano Sampaio.
