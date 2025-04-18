# Proxmox authentication
proxmox_url = "https://edge-pve-01.lan.homelab:8006/api2/json"

# General
node                 = "edge-pve-01"
vm_name              = "ubuntu-24-04-server-cpu"
template_description = "Ubuntu server 24.04.2 template with cpu modifications generated by Packer on {{ isotime `2006-01-02 15:04` }}."

# Boot
iso_file           = "ubuntu-24.04.2-live-server-amd64.iso"
iso_full_file_path = "CephFS:iso/{iso_file}"

# CPU
sockets  = 1
cores    = 4
cpu_type = "host"
