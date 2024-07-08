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
