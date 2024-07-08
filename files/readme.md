**Notes**<br>
<br>
The binary compressed files contains the files needed for below.<br>

notrunc is only important to prevent truncation when writing into a file. This has no effect on a block device such as sda or sdb.<br>


There seems to be diff ways and combinations of flashing the bins, but this is how I do it.

EMMC
<br>
echo 0 > /sys/block/mmcblk2boot0/force_ro
<br>
sleep .50
<br>
dd if="bootinfo_emmc.bin" of="/dev/mmcblk2boot0" bs=512 conv=notrunc<br>
dd if="FSBL.bin" of="/dev/mmcblk2boot0" bs=512 seek=1 conv=notrunc<br>
dd if="FSBL.bin" of="/dev/mmcblk2boot0" bs=512 seek=512 conv=notrunc<br>
dd if="fw_dynamic.itb" of="/dev/mmcblk2" bs=512 seek=1280 conv=notrunc<br>
dd if="u-boot.itb" of="/dev/mmcblk2" bs=512 seek=2048 conv=notrunc<br>
sync<br>
SDCARD<br>
<br>
<br>

dd if="bootinfo_emmc.bin" of="/dev/mmcblk0" bs=512 conv=notrunc<br>
dd if="FSBL.bin" of="/dev/mmcblk0" bs=512 seek=1 conv=notrunc<br>
dd if="FSBL.bin" of="/dev/mmcblk0" bs=512 seek=512 conv=notrunc<br>
dd if="fw_dynamic.itb" of="/dev/mmcblk0" bs=512 seek=1280 conv=notrunc<br>
dd if="u-boot.itb" of="/dev/mmcblk0" bs=512 seek=2048 conv=notrunc<br>
sync<br>
<br>
<br>
Boot tools
<br>
usb-creator-gtk
<br>
There is probably a language barrier. I think we have different native languages, but the search method you tried did not work for me, yet the tool is there with a 'translated' name (for me 'Skapa uppstartsdisk'). But the file name usb-creator-gtk can be found, actually it is enough to type "usb" in the search window to find it. See the screenshot (where also 'my own' mkusb tools are shown).

You can also find it by the following command line in a terminal window,

which usb-creator-gtk
and run it with the command

usb-creator-gtk
enter image description here

Edit 1: If for some reason there is no Startup Disk Creator in your system, you can install it with

sudo apt update
sudo apt install usb-creator-gtk
and the current version (0.3.13, now, 2022-06-23, in Ubuntu 22.04 LTS) can be found by

sudo apt-cache policy usb-creator-gtk
Edit 2: If you install a minimal Ubuntu system, there will be no Startup Disk Creator. Thanks to the original poster of this thread, Saeed Neamati, for sharing this observation :-)
