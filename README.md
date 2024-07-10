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


