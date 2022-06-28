To test with complex device names, use LVM.

```bash
sudo dnf install -y lvm2
sudo pvcreate /dev/sdb
sudo pvcreate /dev/nvme0n1
sudo vgcreate data_sdb /dev/sdb
sudo vgcreate data_nvme0n1 /dev/nvme0n1 
sudo lvcreate -l100%FREE data_sdb -n data_sdb_lv
sudo lvcreate -l100%FREE data_nvme0n1 -n data_nvme0n1_lv
```

Then use those paths in inventory, e.g. `/dev/data_sdb/data_sdb_lv`.
