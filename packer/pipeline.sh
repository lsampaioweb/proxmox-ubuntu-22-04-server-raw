#!/bin/bash
set -e # Abort if there is an issue with any build.

# Initialize (download) the packer plugins.
packer init config.pkr.hcl

# Format all the current and child folders.
packer fmt -recursive .

# packer validate -only="credencials.file.password" -var-file=project.pkrvars.hcl iso/. 
packer build -only="credencials.file.password" -var-file=project.pkrvars.hcl iso/. 

# packer validate -only="ubuntu.proxmox-iso.template" -var-file=project.pkrvars.hcl iso/. 
packer build -only="ubuntu.proxmox-iso.template" -var-file=project.pkrvars.hcl iso/. 

# packer validate -only="kvm-node.null.extra-config" -var-file=project.pkrvars.hcl iso/. 
packer build -only="kvm-node.null.extra-config" -var-file=project.pkrvars.hcl iso/. 
