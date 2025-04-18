# Proxmox authentication
proxmox_url = "https://pve-01.lan.homelab:8006/api2/json"

# General
node                 = "pve-01"
vm_id                = 901
vm_name              = "ubuntu-24-04-server-raw"
pool                 = "Template"
template_description = "Ubuntu server 24.04.2 template with the bare minimum configuration generated by Packer on {{ isotime `2006-01-02 15:04` }}."

# Boot
iso_file           = "ubuntu-24.04.2-live-server-amd64.iso"
iso_full_file_path = "CephFS:iso/{iso_file}"

# Hard Disk
disks = [
  {
    storage_pool = "Ceph_Gold"
  }
]

# Networks
network_adapters = [
  {
    bridge = "vmbr100"
  }
]
