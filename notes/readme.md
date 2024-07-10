Since this board isn't the fastest board. I'm installed QEMU on my PC which will run an 8 core RISC-V virtual machine from the command line.

I want to see if building a kernel will be faster being build on a RISC-V virtual machine that the actuall hardware.

Update: 
**June 16th

Explaining Computers showcased the board. It's like he says, if it could boot from NVME it would be much faster.

I am working on this now. Will post updates as I have them.

Franco

**June 17th New Links**

https://github.com/riscv-collab/riscv-gnu-toolchain

https://github.com/riscv-collab/riscv-gnu-toolchain/releases

https://stijn.tintel.eu/blog/2024/05/19/compiling-uboot-bpi-f3/

https://github.com/pyavitz/debian-image-builder/activity

https://github.com/TroyMitchell911/bpi-f3-linux-6.6<br>
https://github.com/cyyself/bpi-f3-mkimg<br>
https://github.com/jellyterra/bpi-f3-archlinux<br>

**June 18th**

I found they make a tool for Linux called Clonezilla which will change your initrd 

I haven't tried it yet but if you run it on the banana pi-f3 with an m.2 installed, you boot from your micro sd card and run it - it will 

detect other drives installed on your machine and change the initrd so it uses that storage.

I need o test this. I'll let you know.

**Updated URL:**

https://wiki.riscv.org/display/HOME/Toolchain+Projects

Understanding the RISC-V boot order

https://github.com/carlosedp/riscv-bringup/blob/master/unleashed/Readme.md

https://github.com/u-boot/u-boot/blob/master/doc/arch/riscv.rst

https://www.rocketboards.org/foswiki/Documentation/SingleImageBoot

**Building an Image  BPI-F3 stuff**

https://docs.banana-pi.org/en/tutorial/how_to_build_a_image_with_bsp
https://gitee.com/bianbu-linux/linux-6.1
https://gitee.com/bianbu-linux/opensbi
https://archive.spacemit.com/image/k1/version/bianbu/


**EMMC Info**

Not for BPI-F3 but important to know for more information about booting and flags

**Great Link**
**https://community.st.com/t5/stm32-mpus-products/stm32mp1-boot-from-emmc-and-switch-boot-source-after-otp/td-p/144840**


https://stackoverflow.com/questions/71955198/where-is-uboot-environment-variables-stored-in-emmc

Similarly, you can check the u-boot version on the board. The boot partition /dev/mmcblk2boot0 contains the u-boot binary with the old version lf_v2022.04_var01.

From here: https://embeddeduse.com/2024/05/13/updating-u-boot-with-an-a-b-strategy/

# strings /dev/mmcblk2boot0 | grep "U-Boot 20"
U-Boot 2022.04-lf_v2022.04_var01+gf6390c6805

**This command actually works on the BPI-F3 K1. When you run it it reports back what's in that partition!**

The command that I used was **strings /dev/mmcblk2boot0 | grep "U-Boot"**

 mmc extcsd read /dev/mmcblk2 | grep -A2 PARTITION_CONFIG
Boot configuration bytes [PARTITION_CONFIG: 0x08]
 Boot Partition 1 enabled
 No access to boot partition

**June 20th**
**kernel Compile errors**

So when trying to compile the kernel kept getting an error. When I checked dmesg I said that was out of memory. I stopped the GUI with Init 3 and the compile finished from console.




June 21st

Install Open SBI on my box, followed the instructions.

The only difference in my method was that I was booting from Emmc so I used blk2 not blk0 which would have been the Micro SD card.

Franco

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


**More downloads, more compiles, more pulling out hair out!**
<br>
<br>
**June 24th**
<br>
Well after a lot of digging, thinking I was going to change the Init file that was located in the initrd that was only the beginning.<br>
After I compiled the kernel, copying it over the system would not boot. Oh and before this
I downloaded the source code for Grub and Grub2 boot loader because I wanted to know if that was even an option. Even though it compiled there was 
something not quite right with the booting. After more digging looked in to more information and u-boot and relalized that was a whole nother thing
as u-boot needs to be aware of the kernel. So here we go again, download source for u-boot and compile, build all the tools etc. There's so many options
it's a whole big section. This morning I downloaded some new source code which was a boot selector for u-boot. Basically you tell u-boot you want to boot from whatever
device you want, and yes it has provision for NVME. <br>
<br>
Holy what a pain, doesn't help that the documentation is crap and banana pi is completely not helpful.  What makes me mad is that they're making a laptop with the same board but
with 8 gigs of RAM and boots Ubuntu. But they won't release the image (how nice of them). We will keep working hard to get this thing working for all of us!
<br>
New Links for this week<br>

https://github.com/ARM-software/u-boot/tree/master

<br>
Franco
<br>

**June 25th**

Downloaded pi-u-boot from here<br>

https://github.com/BPI-SINOVOIP/pi-u-boot/tree/v2022.10-k1
<br>
Ran this command:  

make k1_defconfig which produces a .config file<br>
Then ran a make. Let it build. <br>
When finished you should have the u-boot for the BPI-F3 aka spacemit k1 board.<br>
This was my output.<br>
(2024-06-25 09:07:14,311) arch : RISCV64
(2024-06-25 09:07:14,311) description : spacemit k1x fsbl image
writing RSA key
writing RSA key
(2024-06-25 09:07:15,241) arch : RISCV64
(2024-06-25 09:07:15,242) description : spacemit k1x spinor bootinfo image
(2024-06-25 09:07:15,672) arch : RISCV64
(2024-06-25 09:07:15,673) description : spacemit k1x spinand bootinfo image
(2024-06-25 09:07:16,100) arch : RISCV64
(2024-06-25 09:07:16,101) description : spacemit k1x eMMC bootinfo image
(2024-06-25 09:07:16,535) arch : RISCV64
(2024-06-25 09:07:16,536) description : spacemit k1x sdcard bootinfo image<br><br><br>
**June 26**
<br>
Wow it's been a crazy week! Every day that goes by I learn more and more about this board. That also means I am getting closer to a video release on YouTube for everyone on how to install the latest Ubuntu on this machine and have it run from NVME because that is my goal. I will let you know soon!
<br>
<br>
**June 27th**
<br>
I just found something out I had to share, apparently if you're connnected to your BPI-F3 board via debig console. As soon as you power it on and press the letter "s" is drops to the prompt!
That changes everything! I guess not having the instruction in english didn't help! I used Google translate to find that out.<br>
<br>
**Good Link**
https://dev.to/luzero/bringing-up-bpi-f3-part-1-3bm4<br>
<br>
**July 1st**
<br>
[env_file](notes/env_print)<br>
[fullbootlog](notes/fullbootlog)<br>
[ubootcommand](notes/ubootcommands)<br>
[k1_defconfig](notes/k1_defconfig)<br>
<br>
Working on this BPI-F3 this weekend. Posting my notes in the links above.  
<br>
Building pi-u-boot now to create a new u-boot image so I can customize the k1_defconfig. This file should allow for me to create a menu, have more than one option for booting, different test kernels and so on. Plus booting from different sources like MMC and NVME.<br>
**July 2nd**
So I've been doing reading on U-Boot. It looks like I'll be writing my own config file for it. There is so much crap in the config file you don't need. It can be much shorter than what's there now. I'll post what  my config file looks like when I write it.<br>
<br>
Here's what I learned so far<br>
<br>
Instead of 500 lines of #defines and a 4KB boot script, all that is needed is the following command:
**bootflow scan -lb**
which scans for available bootflows, optionally listing each find it finds (-l) and trying to boot it (-b).
<br>
**boot_targets**
This environment variable can be used to control the list of bootdevs searched and their ordering, for example:<br>

setenv boot_targets "nvme"
<br>
**Limit this to NVME**
<br>
To scan the discoverable devices connected to the buses such as USB and PCIe prior to bootmenu showing up, CONFIG_PREBOOT can be used to run the command before showing the bootmenu, i.e.:
<br>
CONFIG_USE_PREBOOT=y<br>
CONFIG_PREBOOT="pci enum; usb start; scsi scan; nvme scan; virtio scan"<br>
<br>
**NVMe**
<br>
This methods load the image from an NVMe drive. Required configuration settings include:<br>
<br>
CONFIG_SPL_PCI=y
<br>
CONFIG_SPL_PCI_PNP=y<br>
<br>
**Things I need to check or remove**
<br>
Things I want to remove
<br>
Loading from block devices<br>
MMC1, MMC2, MMC2_2<br>
These methods read an image from SD card or eMMC. The first digit after ‘MMC’ indicates the device number. Required configuration settings include:<br>
<br>
CONFIG_SPL_MMC=y or CONFIG_TPL_MMC=y
<br>
To use a PCI connected MMC controller you need to additionally specify:
<br>
CONFIG_SPL_PCI=y
<br>
CONFIG_SPL_PCI_PNP=y
<br>
CONFIG_MMC=y
<br>
CONFIG_MMC_PCI=y
<br>
CONFIG_MMC_SDHCI=y
<br>
To load from a file system use:
<br>
CONFIG_SPL_FS_FAT=y or CONFIG_SPL_FS_EXT=y
<br>
CONFIG_SPL_FS_LOAD_PAYLOAD_NAME=”<filepath>”<br>

**Using binman**
<br>
https://docs.u-boot.org/en/latest/build/buildman.html
<br>
Example use of binman in U-Boot
Binman aims to replace some of the ad-hoc image creation in the U-Boot build system.

Consider sunxi. It has the following steps:

It uses a custom mksunxiboot tool to build an SPL image called sunxi-spl.bin. This should probably move into mkimage.

It uses mkimage to package U-Boot into a legacy image file (so that it can hold the load and execution address) called u-boot.img.

It builds a final output image called u-boot-sunxi-with-spl.bin which consists of sunxi-spl.bin, some padding and u-boot.img.

Binman is intended to replace the last step. The U-Boot build system builds u-boot.bin and sunxi-spl.bin. Binman can then take over creation of sunxi-spl.bin by calling mksunxiboot or mkimage. In any case, it would then create the image from the component parts.

This simplifies the U-Boot Makefile somewhat, since various pieces of logic can be replaced by a call to binman.
<br>
CONFIG_SPL_NVME=y
<br>

https://docs.u-boot.org/en/latest/develop/package/binman.html#example-use-of-binman-in-u-boot<br>
<br>
https://docs.u-boot.org/en/latest/arch/riscv.html
<br>
**Another finding**
<br>
https://github.com/riscv-software-src/opensbi/blob/master/docs/firmware/fw_payload.md
<br>
<br>
**FINALLY** 
<br>
After posting on the BPI-F3 forum Patrick came through for me. He gave me a link to his GITHUB which allows you to boot from NVME. The link to the conversation and his GitHub below.
<br>
**Conversation**
<br>
https://forum.banana-pi.org/t/booting-u-boot-kernel-etc/18408/5
<br>
**Patrick's Github**
<br>
https://github.com/pyavitz/debian-image-builder/tree/feature/patches/uboot/v2022.10/bananapif3
<br>
I will try this tonight after work.







