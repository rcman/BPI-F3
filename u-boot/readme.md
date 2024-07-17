# U-Boot #

<br>

**u-boot bypass**<br>
<br>
This describes how to fake the keys required by u-boot<br>
<br>

https://gitlab.com/rkraevskiy/ubootpubkey/-/blob/master/README?ref_type=heads
<br>
# How flash is partitions
<br>
{
    "version": "1.0",
    "format": "gpt",
    "partitions": [
        {
            "name": "bootinfo",
            "offset": "0",
            "size": "80B",
            "image": "factory/bootinfo_sd.bin"
        },
        {
            "name": "fsbl",
            "offset": "128K",
            "size": "256K",
            "image": "factory/FSBL.bin"
        },
        {
            "name": "env",
            "offset": "384K",
            "size": "64K"
        },
        {
            "name": "opensbi",
            "offset": "1M",
            "size": "1M",
            "image": "fw_dynamic.itb"
        },
        {
            "name": "uboot",
            "offset": "2M",
            "size": "2M",
            "image": "u-boot.itb"
        },
        {
            "name": "bootfs",
            "type": "FAT32",
            "offset": "4M",
            "size": "-",
            "image": [
                "factory/bootinfo_emmc.bin",
                "factory/bootinfo_spinand.bin",
                "factory/bootinfo_spinor.bin",
                "factory/FSBL.bin",
                "fw_dynamic.itb",
                "u-boot.itb",
                "bootfs.ext4",
                "rootfs.ext4",
                "env.bin",
                "/partition_.+.json$/"
            ]
        }
    ]
}

