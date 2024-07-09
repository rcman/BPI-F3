**EXT Linux**
<br>

Trying to use extlinux to boot.<br>
Sample<br>

A basic Linux menu entry looks like this:<br>
label squeeze<br>
menu label Debian Squeeze on sda5, kernel 2.6.32-5-686<br>
kernel /vmlinuz-2.6.32-5-686<br>
append initrd=/initrd.img-2.6.32-5-686 root=UUID=98f012537-7a7c-2213-819e-a69ddf9abc2b ro quiet<br>
<br>
menu background splash.png
<br>

EXTLINUX is a new syslinux derivative, which boots from a Linux ext2/ext3 filesystem. It works the same way as SYSLINUX, with a few slight modifications. It is intended to simplify first-time installation of Linux, and for creation of rescue and other special-purpose boot disks.
The installer is designed to be run on a mounted directory. For example, if you have an ext2 or ext3 usb key mounted on /mnt, you can run the following command:

extlinux --install /mnt
<br>
This is the extlinux from latest Ubuntu Trusty BTW:

% apt-cache policy extlinux
extlinux:
Installed: 3:4.05+dfsg-6+deb8u1
Candidate: 3:4.05+dfsg-6+deb8u1
Version table:
*** 3:4.05+dfsg-6+deb8u1 0
500 http://us.archive.ubuntu.com/ubuntu/ trusty/universe amd64 Packages
100 /var/lib/dpkg/status
<br>
<br>
https://edoceo.com/sys/extlinux
<br>
<br>
So it looks like this take the place of the FSBL.bin which is DD to the partition from their docs
<br>
**Notes from BPI-F3 site**
<br>
echo 0 | sudo tee /sys/block/mmcblk2boot0/force_ro<br>
sudo dd if=bootinfo_emmc.bin of=/dev/mmcblk2boot0<br>
**sudo dd if=FSBL.bin of=/dev/mmcblk2boot0 seek=512 bs=1**
<br>
sync
<br>
**ExtLinux boot**
<br>
dd if=/usr/share/syslinux/mbr.bin of=/dev/sda bs=512 count=1
<br>
<br>
https://wiki.archlinux.org/title/syslinux#Configuration
<br>
<br>
https://wiki.archlinux.org/title/syslinux#Chainloading_other_Linux_systems
**Docs**
<br>
https://superuser.com/questions/743802/how-to-boot-linux-with-extlinux
<br>
https://shallowsky.com/linux/extlinux.html
<br>
https://edoceo.com/sys/extlinux
<br>
**Ubuntu specific**
<br>
https://manpages.ubuntu.com/manpages/focal/man1/extlinux.1.html
<br>

https://www.funtoo.org/Extlinux
<br>
https://www.syslinux.org/old/extlinux.php
<br>
https://manpages.debian.org/stretch/extlinux/extlinux.1.en.html
<br>
**Debian extlinux**
<br>
https://manpages.debian.org/stretch/extlinux/extlinux.1.en.html
<br>
https://unix.stackexchange.com/questions/530777/how-do-i-install-the-syslinux-package-on-debian-stretch
<br>
https://serverfault.com/questions/755745/kernel-upgrade-with-extlinux-on-debian
<br>
<br>
There is nothing different introduced by Debian: install extlinux as usual with:

extlinux --install /boot/extlinux
make sure kernel image is present with matching initrd;

create a /boot/extlinux/extlinux.conf file like:

default linux
timeout 1
label linux
linux ../vmlinuz-4.4.0
append initrd=../initrd.img-4.4.0 root=/dev/vda1 console=tty0 console=ttyS0,115200 ro quiet

label linux-stock
kernel ../vmlinuz-3.16.0-4-amd64
append initrd=../initrd.img-3.16.0-4-amd64 root=/dev/vda1 console=tty0 console=ttyS0,115200 ro quiet
note the path are right in a box in which /boot is not a partition on its own (it is part of / partition).

If the kernel image is too large, use the keyword linux (not kernel).
<br>
https://shallowsky.com/blog/linux/install/extlinux-debian.html
<br>
https://wiki.tinycorelinux.net/doku.php?id=wiki:extlinux
<br>
**How extlinux boots to a partition name**

<br>
https://docs.kontron-electronics.de/sw/yocto/build-stm32mp/booting-an-image.html




