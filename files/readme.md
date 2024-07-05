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
