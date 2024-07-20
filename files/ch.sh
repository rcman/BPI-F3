dd if="bootinfo_emmc.bin" of="/dev/sdd" bs=512 conv=notrunc
dd if="FSBL.bin" of="/dev/sdd" bs=512 seek=1 conv=notrunc
dd if="FSBL.bin" of="/dev/sdd" bs=512 seek=512 conv=notrunc
dd if="fw_dynamic.bin" of="/dev/sdd" bs=512 seek=1280 conv=notrunc
dd if="u-boot.bin" of="/dev/sdd" bs=512 seek=2048 conv=notrunc
