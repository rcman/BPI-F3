## Ubuntu 24.04 on BPI-F3

<br>
<br>
So I finally got Ubuntu 24.04 running on my BPI-F3. It’s running well and I’m working on a video and documentation. I’m working on getting a newer version of the kernel running.
<br>
<br>
The way it’s booting now you can run any version of Linux you want. Here’s the basic steps.
<br>
<br>

**Ubuntu Image**
<br>

Image Bianbu to an Micro SD card. Expand the root so you have enough to copy an image to it.<br>
Image Ubuntu 24.04 to the NVME  (NOTE: you will lose all your data) <br>
What ever image you decide to use this determines which partition you'll use as root (/)<br>
On my Github in the BPI-F3 Repository and cpio is my shell script which will compress and extract the initrd. The instructions are there.<br>
  Sub instrctions:
      After you've images Bianbu to the CD card. Insert it in to your PC and mount partition 5. To do this run the following command. This assumes your SD card shows us as SDD as the drive..<br>
        sudo mkdir /mnt/sd
        sudo mount /dev/sdd5 /mnt sd
        Once mounted cd to /mnt/sd
        mkdir a work diretory in your home directory
        mkdir ~/work
        copy the initrd.img-6.1.15 to that directory with this command
        cp initrd.img-6-1-15 ~/work/
        Download 

If you use my init file you won't need to edit anything, just copy my init file over the one that's extracted from the initrd.
Also in the repository in files folder there’s an init file which is from my initrd.<br>
if your using Ubuntu then that should be fine but other OS then I’m not sure because when other images are written each one writes the root to different partitions.<br>
You can use my init from the files directory or edit yourself. Compress the initrd and copy it back to the SD card replacing the one that’s there.<br>
Booting from the SD card to should mount the root partition on the NVME and everything should run from there.<br>
Ubuntu image Location:<br>
https://cdimage.ubuntu.com/releases/noble/release/ubuntu-24.04-live-server-riscv64.img.gz<br>
<br>
<br>





**BPI-F3 Docs**
<br>
Banana PI-F3 aka BPI-F3 aka SpacemIT board<br>

I've been working on my banana-pi F3 but the documentation and informarmation isn't great. So I'll be sharing my info on here.

Boots from EMmc.

Compiled latest kernal from kernel.org
Copied config file frin /boot to the uncompressed kernel directory as .config

Before compiling the kernel I installed these packages

**sudo apt install libncurses-dev gawk flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf llvm**

The ran make menuconfig to see if it would work. It did

The ran make Image  (completed)
then ran make modules (completed)

This is a work in progress.<br>
<br>

<br>
<br>

**Updated June 20th**
<br>
https://www.fw-web.de/dokuwiki/doku.php?id=en:bpi-r3:uboot
<br>
https://fw-web.de/dokuwiki/
<br>
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/riscv
<br>
https://lore.kernel.org/linux-kernel/20240617-haiku-coasting-2f1cdca0ed30@wendy/T/
<br>
<br>
**Steps to replace OpenSBI on Spacemit K1**
<br>
<br>
https://gist.github.com/cyyself/a07096e6e99c949ed13f8fa16d884402
<br>
<br>
https://github.com/cyyself/bpi-f3-mkimg

Read the Notes file as I will be putting updates in that file.
Thanks

[Translated](translated/readme.md)

[Notes](notes/readme.md)<br>
[Partition](partition/readme.md)
<br>
**I put all my previous notes in the notes directory. Just the updated notes will go here**
<br>
<br>


**July 10th**
<br>
As always I've been reading, trying things out. Found some interesing docs from the Star64 Board. Not about the board but the instructions on how to get it working. Which should work for the BPI-f3.
<br>
Here's the break Down. I will change the docs to refect the values on the BPI-F3<br>
**Updated TFTP Notes**
<br>
You will need the Device Tree for BPI-F3 (dtb file)(usually can be found in the boot directory in dtb or spacemit directory<br>
## Test the Device Tree over TFTP
## TODO: Change `192.168.x.x` to our Computer's IP Address
curl -v tftp://192.168.x.x/k1-x_deb1.dtb (or whatever the name is)<br>
<br>
Copy your initrd to your tftp server<br>
## Test the initrd over TFTP
<br>
curl -v tftp://192.168.x.x/initrd
<br>
## We can run the TFTP commands manually by just running copy and paste.
<br>

**setenv tftp_server 192.168.x.x**<br>
**setenv kernel+addr_r=0x40200000<br>
setenv ramdisk_size 0x1000000<br>
setenv fdt_addr_r=0x46000000<br>**


## Load the kernel from the TFTP<br>
tftpboot ${kernel_addr_r} ${tftp_server}:Image<br>
tftpboot ${fdt_addr_r} ${tftp_server}:k1-x_deb1.dtb<br>
tftpboot ${ramdisk_addr_r} ${tftp_server}:initrd<br>
## Boot
booti ${kernel_addr_r} ${ramdisk_addr_r}:${ramdisk_size} ${fdt_addr_r}<br>
<br>
More to added soon<br>
## Booting Ubuntu RISC-V
<br>
<br>
You need to be able to connect to the Debug console from the BPI-F3 for this to work<br>
Insert a blank SD Card in your machine<br>

Copying Ubuntu onto the SD-card<br>
Download the Ubuntu preinstalled server image from https://cdimage.ubuntu.com/releases/23.04/release/ and flash it on your sdcard using:<br>

zcat ubuntu-23.10-live-server-riscv64.img.gz | sudo dd of=/dev/sdX bs=1M conv=fsync<br>
You will have to replace /dev/sdX by the actual device name of your SD card. Please, be especially cautious not to overwrite the wrong drive as this cannot be undone.<br>

<br>
Run these commands<br>
pci enum<br>
nvme scan<br>
load mmc 1:1 $fdt_addr_r dtb/k1-x_deb1.dtb<br>
load mmc 1:1 $kernel_addr_r<br>
bootm $kernel_addr_r $fdt_addr_r<br>
<br>

**Depending on the U-Boot version the SD-card might show up as mmc device 0. In this case you would have to use mmc 0:1.)**
<br>
When the installation is finished reboot the board without removing the SD card.
U-Boot does not allow the operating system to write UEFI variables. You can do this manually. While rebooting press the enter key when seeing the Hit any key to stop autoboot: message. The following commands set up the installation on the NVMe drive as UEFI boot option 0001.
<br>
pci enum<br>
nvme scan<br>
efidebug boot add -b 0001 'Ubuntu' nvme 0:1 /EFI/ubuntu/grubriscv64.efi<br>
efidebug boot order 0001<br>
To boot into your fresh installation you can use:<br>
bootefi bootmgr<br>
<br>
## GREAT NEWS!
<br>
Well on some good news I finally got Ubuntu 24.04 booted on my board.

I’m writing the docs on it not but basically I change the initrd file and chroot to the ubuntu root which continues to boot from the NVME.

I have a copy of the init file on my GitHub in the files directory. I also have my scripts that compresses and decompresses the initrd file so you don’t need to do that manually.

The short story is I downloaded Ubuntu 24.04 preinstalled server Risc image from Ubuntu. I started by imaging bianbu to an SD card. Then copied the initrd from it to my machine so I could edit it.

Once edited I put it back on the SD. It just works, I think it can boot any version of linux you want using this method. The only thing you need to do is identify which partition of your NVME is root and then put that value in the initrd. it’s that simple.

The system boots from SD card, scans for devices so it can see the NVME, mounts the NVME and chroots the root directory. When I’m up and running I only see the NVME, which is good because that’s all I want to see.

Let me know if you have any questions. Franco 
