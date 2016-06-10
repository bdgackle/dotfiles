# PARTITION SCHEME
/dev/nvme0n1   -- Main SSD
/dev/nvme0n1p1 -- UEFI System Partition
/dev/nvme0n1p2 -- Encrypted boot partition
/dev/nvme0n1p3 -- Encrypted LVM container

/dev/vg        -- Main LVM virtual group
/dev/vg/home   -- Home directory, EXT4, initially 250G
/dev/vg/root   -- Root directory, EXT4, initially 100G
/dev/vg/var    -- Var directory, EXT4, initially 50G

# INSTALL PROCESS
1. Booted from latest Arch live CD as of 2016-05-31
2. Used gdisk to completely erase hard disk
3. Established physical partition scheme
4. Performed secure delete of partitions 2 and 3
5. Created LUKS containers in partitions 2 and 3
6. Created LVM containers in partition 3
7. Mounted LVM containers, proceeded with normal Arch install
8. Installed Grub2
9. Installed CLI tools
10. Installed graphical environment
11. Configured Bumblebee
11. Configured i3
12. Configured Steam
    - Enable multilib in /etc/pacman.conf
    - Do a full upgrade
    - Install:
        lib32-alsa-plugins
        lib32-curl
        lib32-mesa-libgl
        lib32-virtualgl
        lib32-nvidia-utils
        lib32-primus
        primus
        steam

# Connecting to Synapse Wifi
Following is complete config file, sans password hash

Description='Synapse wifi'
Interface=wlp2s0
Connection=wireless
Security=wpa-configsection
IP=dhcp
WPAConfigSection=(
    'ssid="Synapse"'
    'proto=WPA2'
    'key_mgmt=WPA-EAP'
    'auth_alg=OPEN'
    'eap=PEAP'
    'phase1="peapver=0"'
    'phase2="auth=MSCHAPV2"'
    'identity="barryga"'
    'password=hash:12345abcde'
)

password hash created with following command:
echo -n "password" |iconv -t utf16le |openssl md4

Could also just eliminate 'hash' and use plain text in quotes, but that would be icky.
