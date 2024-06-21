**BPI-F3 Docs**

I've been working on my banana-pi F3 but the documentation and informarmation isn't great. So I'll be sharing my info on here.

Boots from EMmc.

Compiled latest kernal from kernel.org
Copied config file frin /boot to the uncompressed kernel directory as .config

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
**Something new I found**

run a sudo apt install inxi
<br>
Then run this command:   inxi -Say
<br>
**Output**
<br>
System:
  Host: k1 Kernel: 6.1.15 arch: riscv64 bits: 64 compiler: gcc v: 13.2.0
    clocksource: riscv_clocksource available: jiffies parameters: earlycon=sbi
    earlyprintk console=tty1 console=ttyS0,115200 loglevel=8 clk_ignore_unused
    swiotlb=65536 rdinit=/init root=/dev/mmcblk2p6 rootwait rootfstype=ext4
  Console: pty pts/3 wm: gnome-shell DM: GDM3 v: 45.beta Distro: Bianbu
    1.0.3 (Mantic Minotaur)


