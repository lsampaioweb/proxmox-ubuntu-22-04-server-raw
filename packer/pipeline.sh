#!/bin/bash
set -e # Abort if there is an issue with any build.

packer init config.pkr.hcl
packer build -only="credencials.file.password" -var-file=project.pkrvars.hcl iso/. 
packer build -only="ubuntu.proxmox-iso.template" -var-file=project.pkrvars.hcl iso/. 
packer build -only="kvm-node.null.extra-config" -var-file=project.pkrvars.hcl iso/. 
