# Packer
build_name = "ubuntu"

# Proxmox authentication
proxmox_url = "https://edge-pve-01.lan.homelab:8006/api2/json"

# General
node    = "edge-pve-01"
vm_id   = 901
vm_name = "ubuntu-24-04-server-raw"
# template_description = "Ubuntu server 24.04.2 template with the bare minimum configuration generated by Packer on {{ formatdate('YYYY-MM-DD hh:mm', timestamp()) }}."
template_description = "Ubuntu server 24.04.2 template with the bare minimum configuration generated by Packer on {{ isotime `2006-01-02` }}."


# Firmware
bios = "ovmf"
efi_config = {
  efi_storage_pool  = "Ceph_Gold"
  efi_format        = "raw"
  efi_type          = "4m"
  pre_enrolled_keys = false
}


# Boot
iso_file = "ubuntu-24.04.2-live-server-amd64.iso"

# System
machine = "q35"

# Networks
network_adapters = {
  "01" = {
    bridge   = "vmbr100"
    model    = "virtio"
    vlan_tag = ""
    firewall = false
  }
}
