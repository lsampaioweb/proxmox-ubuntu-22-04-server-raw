# Proxmox authentication
proxmox_url = "https://pve-01.lan.homelab:8006/api2/json"

# General
node                 = "pve-01"
vm_id                = 901
vm_name              = "ubuntu-24-04-server-raw"
template_description = "Ubuntu server 24.04.2 template with the bare minimum configuration generated by Packer on {{ isotime `2006-01-02 15:04` }}."

# Firmware
efi_config = {
  efi_storage_pool = "Ceph_Gold"
}

# Boot
iso_file           = "ubuntu-24.04.2-live-server-amd64.iso"
iso_full_file_path = "CephFS:iso/{iso_file}"
iso_checksum       = "sha256:0c3f1a2b4d5e7f8a6b9e2c3d4e5f6a7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q3r4"

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
