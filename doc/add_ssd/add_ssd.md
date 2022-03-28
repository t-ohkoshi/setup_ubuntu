ubuntuにSSD(M.2)を増設した際のコマンド
```
root@localhost:~/# sudo fdisk -l | grep nvme
Disk /dev/nvme0n1: 931.5 GiB, 1000204886016 bytes, 1953525168 sectors

root@localhost:~/# sudo mkfs.ext4 /dev/nvme0n1
root@localhost:~/# sudo mount /dev/nvme0n1 /mnt
root@localhost:~/# sudo df -h

tee -a /etc/fstab  <<'EOF'
# mount m.2
/dev/nvme0n1 /mnt/ ext4 defaults 0 0
EOF

```
