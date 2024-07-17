# Ubuntu 24.04 on BPI-F3 from SD-Card and running from NVME

Ubuntu 24.04 is now running on my BPI-F3. Will be working on a video for YouTube soon.

This should work for any version of Linux, this has only been tested with Ubuntu 24.04

**Getting Started**

Download the Bianbu [Image](https://drive.google.com/file/d/1WsmhTV6EIBS-wwhl4kwgR_v_N9DgiJ-C/view?usp=drive_link) and use your favorite too to image it to micro SD card. 

Download the Ubuntu [Image](https://cdimage.ubuntu.com/releases/noble/release/ubuntu-24.04-live-server-riscv64.img.gz) Ubuntu 24.04 to the NVME  (NOTE: you will lose all your data) <br> 

Imaging to the NVME can be performed a couple differnet ways. You copy copy the image from another system to your risc machine's SD Card, or use an image program like raspberry pi Imager or Balena Etcher. You can buy a USB to m.2 adapter which you can purchase on Amazon for about $20 dollars. 
<br>

This boot has only been verified on this version of Ubuntu. It should work for all versions of Linux you just need to know which partition is root(/).
After you've imaged Bianbu to the SD card. Re-insert it to your PC and mount partition. Run this command next.

**sudo mkdir /mnt/sd**

**sudo mount /dev/sdd5 /mnt/sd** <br> (or which ever drive letter yours shows up as. Mine shows up as sdd. if yours
shows up as SDA then mount /dev/sda5). You can determine which drive it is by running the command (**lsblk**)
Once mounted run the command to change directory.

**cd /mnt/sd**

Make a working directory in your home directory.

**mkdir ~/work**

Now copy the initrd-6.1.15 with the command below.<br>
**cp initrd.img-6-1-15 ~/work/**

Download
Copy the cpionew.sh Link below.
Download the [File](https://github.com/rcman/BPI-F3/blob/main/cpio/cpionew.sh) here and copy it to your work directory.
type this command to go there<br>

**cd ~/work**

you should already have the initrd.img-6.1.15 in this directory along with the cpionew.sh
type this command: 

**mkdir initrd-tree**

type this command

**cp initrd.img-6.1.15 initrd.gz**

now uncompress the initrd with this command: 

**./cpionew -u**

this should extract the initrd to the initrd-tree directory
Change to that directory with this command

**cd initrd-tree**

Download the [init](https://github.com/rcman/BPI-F3/blob/main/files/init) file located in the files directory. Replace the init in initrd-tree with the one you Downloaded. Go back one directory by typing:

**cd ..**

Now re-compress the initrd with this command

**./cpionew.sh -r**

Now run this command

**cp initrd.gz initrd.img-6.1.15**

with the SD card still mounted as above run this command

**sudo cp initrd.img-6.1.15 /mnt/sd/**

type this command

**sync**

and then type cd to change back to your home directory
now unmount the sd card with this command

**sudo umount /mnt/sd** 

remove the sd card and put it in the BPI-F3 machine and turn it on. It should boot to Ubuntu located on the NVME
 
If you need help let me know.
Thanks
Franco
![BPI-F3 Running Ubuntu 24.04](https://i.imgur.com/s9crx20.png)
<br><br>
# Project 2 Fixing the kernel
<br>
https://github.com/TroyMitchell911/bpi-f3-linux-6.6
<br>
https://github.com/jellyterra/bpi-f3-archlinux
<br>

**Fixing the boot so it will always boot**
<br>
https://gitlab.com/rkraevskiy/ubootpubkey/-/blob/master/README?ref_type=heads
