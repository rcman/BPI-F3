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
    1.0.3 (Mantic Minotaur)<br>


**OMG I think I just figured it out!**
<br>

Will know tonight if it's going to work!  <br>
**June 24th**
<br>
Well after a lot of digging, thinking I was going to change the Init file that was located in the initrd that was only the beginning.<br>
After I compiled the kernel, copied over my compiled version of the kernel with the same name the system would not boot. Oh and before this<br>
I downloaded the source code for Grub and Grub2 boot loader because I wanted to know if that was even an option. Even though it compiled there was <br>
something not quite right with the booting. After more digging looked in to more information and u-boot and relalized that was a whole nother thing<br>
as u-boot needs to be aware of the kernel. So here we go again, download source for u-boot and compile, build all the tools etc. There's so many options<br>
it's a whole big section. This morning I downloaded some new source code which was a boot selector for u-boot. Basically you tell u-boot you want to boot from whatever<br>
device you want, and yes it has provision for NVME. <br>
<br>
Holy what a pain, doesn't help that the documentation is crap and banana pi is completely not helpful.  What makes me mad is that they're making a laptop with the same board but<br>
with 8 gigs of RAM and boots Ubuntu. But they won't release the image (how nice of them). We will keep working hard to get this thing working for all of us!
<br>
Franco



