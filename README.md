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
setenv tftp_server 192.168.x.x<br>
setenv kernel+addr_r=0x40200000<br>
setenv ramdisk_size 0x1000000<br>
setenv fdt_addr_r=0x46000000<br>


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
Insert a blank SD Card in your machine<br>

Copying Ubuntu onto the SD-card<br>
Download the Ubuntu live install server image and flash it onto your sdcard using:<br>

zcat ubuntu-23.10-live-server-riscv64.img.gz | sudo dd of=/dev/sdX bs=1M conv=fsync<br>
You will have to replace /dev/sdX by the actual device name of your SD card. Please, be especially cautious not to overwrite the wrong drive as this cannot be undone.<br>
<br>
Download Ubuntu RISC-V Server Image from Ubuntu
<br>
You need to be able to connect to the Debug console from the BPI-F3 for this to work<br>
<br>
Insert a blank SD Card in your machine<br>
Run these commands<br>
pci enum<br>
nvme scan<br>
load mmc 1:1 $fdt_addr_r dtb/k1-x_deb1.dtb<br>
load mmc 1:1 $kernel_addr_r<br>
bootm $kernel_addr_r $fdt_addr_r<br>
<br>

**Depending on the U-Boot version the SD-card might show up as mmc device 0. In this case you would have to use mmc 0:1.)**
<br>
Loading the installer takes some time. Once it is loaded follow the installation steps in https://ubuntu.com/tutorials/install-ubuntu-server.

When the installation is finished reboot the board without removing the SD card.

U-Boot does not allow the operating system to write UEFI variables. You can do this manually. While rebooting press the enter key when seeing the Hit any key to stop autoboot: message. The following commands set up the installation on the NVMe drive as UEFI boot option 0001.


pci enum
nvme scan
efidebug boot add -b 0001 'Ubuntu' nvme 0:1 /EFI/ubuntu/grubriscv64.efi
efidebug boot order 0001
To boot into your fresh installation you can use:
bootefi bootmgr
