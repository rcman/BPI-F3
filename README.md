**BPI-F3 Docs**

I've been working on my banada-pi F3 but the documentation and informarmation isn't great. So I'll be sharing my info on here.

Right now Armbian boots from a micro SD card. I downloaded the latest kernal from kernel.org

Copied the config file from the boot directory to .config of the downloaded kernel.

Before compiling the kernel I installed these packages

**sudo apt install libncurses-dev gawk flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf llvm**

The ran make menuconfig to see if it would work. It did

The ran make Image  (completed)
then ran make modules (completed)

This is a work in progress.

**Updated June 20th**

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
https://gist.github.com/cyyself/a2201c01f5c8955a119641f97b7d0280
<br>
https://gist.github.com/cyyself/a07096e6e99c949ed13f8fa16d884402
<br>
https://github.com/cyyself/bpi-f3-mkimg

Read the Notes file as I will be putting updates in that file.
Thanks

[Translated](translated/readme.md)

[Notes](notes/readme.md)
