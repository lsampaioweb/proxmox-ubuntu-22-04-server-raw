#!/bin/bash
set -e # Abort if there is an issue with any build.

packer build -only="credencials.file.password" .
packer build -only="machine.proxmox-iso.template" .
packer build -only="pve-node.null.extra-config" .
