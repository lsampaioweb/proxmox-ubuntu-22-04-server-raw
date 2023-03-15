# proxmox-ubuntu-22-04-server-raw
Project with Ansible scripts to create an Ubuntu template on Proxmox from an ISO file with the bare minimum packages and updates.

Run the command in the terminal:
```bash
  ansible-playbook template.yml
  ansible-playbook kvm_node.yml -e "node=kvm-07 vm_id=900 hotplug=disk,network,cpu storage_pool=Ceph_Silver"
  ansible-playbook kvm_disk.yml -e "node=kvm-07 vm_id=900 disk_type=scsi0 file=Ceph_Silver:base-900-disk-0"
```

# Created by: 

1. Luciano Sampaio.
