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
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts

Read the Notes file as I will be putting updates in that file.
Thanks

[Translated](translated/readme.md)

[Notes](notes/readme.md)
