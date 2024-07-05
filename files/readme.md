There seems to be diff ways and combinations of flashing the bins, but this is how I do it.

EMMC

echo 0 > /sys/block/mmcblk2boot0/force_ro
sleep .50
dd if="bootinfo_emmc.bin" of="/dev/mmcblk2boot0" bs=512 conv=notrunc
dd if="FSBL.bin" of="/dev/mmcblk2boot0" bs=512 seek=1 conv=notrunc
dd if="FSBL.bin" of="/dev/mmcblk2boot0" bs=512 seek=512 conv=notrunc
dd if="fw_dynamic.itb" of="/dev/mmcblk2" bs=512 seek=1280 conv=notrunc
dd if="u-boot.itb" of="/dev/mmcblk2" bs=512 seek=2048 conv=notrunc
sync
SDCARD

dd if="bootinfo_emmc.bin" of="/dev/mmcblk0" bs=512 conv=notrunc
dd if="FSBL.bin" of="/dev/mmcblk0" bs=512 seek=1 conv=notrunc
dd if="FSBL.bin" of="/dev/mmcblk0" bs=512 seek=512 conv=notrunc
dd if="fw_dynamic.itb" of="/dev/mmcblk0" bs=512 seek=1280 conv=notrunc
dd if="u-boot.itb" of="/dev/mmcblk0" bs=512 seek=2048 conv=notrunc
sync
