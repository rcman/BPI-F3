# Ubuntu 24.04 on BPI-F3 from SD-Card and running from NVME

<br>
<br>
Ubuntu 24.04 is now running on my BPI-F3. Will be working on a video for YouTube soon.
<br>
<br>
This should work for any version of Linux, this has only been tested with Ubuntu 24.04<br>

##Getting Started
<br>
Download the Bianbu [Image](https://drive.google.com/file/d/1WsmhTV6EIBS-wwhl4kwgR_v_N9DgiJ-C/view?usp=drive_link) and use your favorite too to image it to micro SD card. 

Download the Ubuntu [Image](https://cdimage.ubuntu.com/releases/noble/release/ubuntu-24.04-live-server-riscv64.img.gz) Ubuntu 24.04 to the NVME  (NOTE: you will lose all your data) <br> 
<br>
This boot has only been verified on this version of Ubuntu.
After you've images Bianbu to the SD card. Re-insert it to your PC and mount partition. Run this command next.
        **sudo mkdir /mnt/sd**
        **sudo mount /dev/sdd5 /mnt/sd** (or which ever drive letter yours shows up as. Mine shows up as sdd. if yours shows up as SDA then **mount /dev/sda5**)
          Once mounted run the command to change directory.

**cd /mnt/sd**

        Make a working directory in your home directory.

**mkdir ~/work**

        Now copy the initrd-6.1.15 with the command blow.
**cp initrd.img-6-1-15 ~/work/**

        Download
        Copy the cpionew.sh 
Download the [File](https://github.com/rcman/BPI-F3/blob/main/cpio/cpionew.sh) here.
       type this command to go there<br>
**cd ~/work**

        you should already have the initrd.img-6.1.15 in this directory along with the cpionew.sh
     type this command: 
**mkdir initrd-tree**

ow type this command: 
**cp initrd.img-6.1.15 initrd.gz**
         now uncompress the initrd with this command: 

**./cpionew -u**

this should extract the initrd to the initrd-tree directory
Change to that directory with this command

**cd initrd-tree**

Download the [init](https://github.com/rcman/BPI-F3/blob/main/files/init) file located in the files directory. Replace the init in initrd-tree with the one you Downloaded. Go back one directory by typing:

**cd ..**

Now re-compress the initrd with this command: 
**./cpionew.sh -r**

Now run this command: 
**cp initrd.gz initrd.img-6.1.15**

with the SD card still mounted as above run this command: 
**sudo cp initrd.img-6.1.15 /mnt/sd/**

type this command: 
**sync**

and then type cd to change back to your home directory
now unmount the sd card with this command:
**sudo umount /mnt/sd** 

remove the sd card and put it in the BPI-F3 machine and turn it on. It should boot to Ubuntu located on the NVME
 
If you need help let me know.
Thanks
Franco
