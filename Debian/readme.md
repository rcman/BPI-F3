
[BPI-R3] Debian Bullseye Image
Banana Pi Router design
BPI-R3/R3 Mini(MT7986)


profile, messages, bookmarks and preferences
Home EN Forum CN Forum Github Downloads BPI Docs Wikipedia Official Aliexpress Store
Do you want live notifications when people reply to your posts? Enable Notifications​
Dec 2022
1d


frank-w

dobril
Mar '23
Hi,

Yes boot from nvme is not possible and also access from uboot to it not.

Imho the preferred way would be using lvm volumes. There you can easily extend them later. Configure them in running system is tricky…normally this is done at install,but here we have no real install.

I guess your mounts failing because the mountpoint is not empty…you have to configure lvm and mounts without running this system (maybe booting initrd to make dirs empty and adding mounts for it in fstab).


Reply

dobril

frank-w
Mar '23
LVM is already in place, I rebuild the kernel and enable LVM support. The mounts not failing , just LVM mounts happen on later stage. Looks like systemd first boot with the files from mmcblk0p6 ,the services start loading then mounts from LVM happen too, which doing re-mount but systemd already loaded the configurations from mmcblk0p6 partition.


Reply

frank-w

dobril
Mar '23
Mhm,somewhere the config needs to be stored…so moving etc to nvme does not make much sense…maybe there is a way to tell kernel to mount lvm before by defining something in cmdline (uboot).

Only know /var,/home,…also /bin, /usr/bin can be loaded before the mount happens.


Reply
This is the first time rincewind has posted — let’s welcome them to our community!


rincewind

dobril
Mar '23
You only need to have /boot on mmc as uboot doesn’t support nvme. But you can boot with root on nvme, just change bootargs in uboot. Then mount mmc somewhere and install kernels to mmc-mountpoint/boot.


Reply

frank-w

rincewind
Mar '23
Yes,that was the easiest way…don’t thought at it in this moment. Just copy full rootfs to nvme (i guess you already did that) and set “root” var in uEnv.txt to the nvme device and partition


Reply
last visit

dobril
Mar '23
Perfect. Thank you very much. I removed the LVM and decide to use entire NVMe. Now bpi-r3 really work very well. Only with MMC was not good.

root@bpi-r3:~# hdparm -Tt --direct /dev/nvme0n1

/dev/nvme0n1:
 Timing O_DIRECT cached reads:   942 MB in  2.00 seconds = 470.62 MB/sec
 Timing O_DIRECT disk reads: 1890 MB in  3.00 seconds = 629.92 MB/sec

root@bpi-r3:~# cat /boot/uEnv.txt
fit=bpi-r3.itb
root=/dev/nvme0n1p1 rootfstype=ext4 rootwait

root@bpi-r3:~# df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/root       469G  965M  444G   1% /
devtmpfs        993M     0  993M   0% /dev
tmpfs           995M     0  995M   0% /dev/shm
tmpfs           398M  1.6M  397M   1% /run
tmpfs           5.0M     0  5.0M   0% /run/lock
/dev/mmcblk0p5  100M  8.3M   92M   9% /boot
tmpfs           199M     0  199M   0% /run/user/0

root@bpi-r3:~# mount
/dev/nvme0n1p1 on / type ext4 (rw,relatime)
devtmpfs on /dev type devtmpfs (rw,nosuid,noexec,relatime,size=1016064k,nr_inodes=254016,mode=755)
