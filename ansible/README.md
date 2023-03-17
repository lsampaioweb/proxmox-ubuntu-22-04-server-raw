# proxmox-ubuntu-22-04-server-raw
Project with Ansible scripts to create an Ubuntu template on Proxmox from an ISO file with the bare minimum packages and updates.

Run the command in the terminal:
```bash
  ansible-playbook template.yml
  ansible-playbook kvm_setup.yml -e "node=kvm-07 vm_id=901 hotplug=disk,network,cpu storage_pool=Ceph_Silver"
```

# Created by: 

1. Luciano Sampaio.
