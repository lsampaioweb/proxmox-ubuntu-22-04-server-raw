# proxmox-ubuntu-22-04-server-raw
Project with Packer and Ansible scripts to create an Ubuntu template on Proxmox from an ISO file with the bare minimum packages and updates.

Run these commands on the computer that is running Packer:

```bash
  cd packer
  
  packer init config.pkr.hcl
  packer build -only="credencials.file.password" -var-file=project.pkrvars.hcl iso/. 
  packer build -only="template.proxmox-iso.ubuntu" -var-file=project.pkrvars.hcl iso/. 
  packer build -only="kvm-node.null.extra-config" -var-file=project.pkrvars.hcl iso/. 
  or 
  ./pipeline.sh
```

# Created by: 

1. Luciano Sampaio.
