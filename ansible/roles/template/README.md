# Setup the machine with the default applications and settings

Run the command in the terminal:
```bash
  ansible-playbook template.yml
```

# Tasks:

## 1. Disable IPV6.
  1. Set GRUB_CMDLINE_LINUX="ipv6.disable=1".

## 2. Setup Brazilian timezone.
  1. Set the timezone to America/Maceio.

## 3. Setup Brazilian NTP Servers.
  1. 0.br.pool.ntp.org.
  2. 1.br.pool.ntp.org.

## 4. Install required packages.
  1. qemu-guest-agent.

## 5. Remove unnecessary packages.

# Created by: 

1. Luciano Sampaio.