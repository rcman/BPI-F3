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

https://github.com/TroyMitchell911/bpi-f3-linux-6.6
https://github.com/cyyself/bpi-f3-mkimg
https://github.com/jellyterra/bpi-f3-archlinux

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

https://community.st.com/t5/stm32-mpus-products/stm32mp1-boot-from-emmc-and-switch-boot-source-after-otp/td-p/144840
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





