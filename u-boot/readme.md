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
{<br>
    "version": "1.0",<br>
    "format": "gpt",<br>
    "partitions": [<br>
<br>
        {<br>
            "name": "bootinfo",<br>
            "offset": "0",<br>
            "size": "80B",<br>
            "image": "factory/bootinfo_sd.bin"<br>
        },<br>
        {<br>
            "name": "fsbl",<br>
            "offset": "128K",<br>
            "size": "256K",<br>
            "image": "factory/FSBL.bin"<br>
        },<br>
        {<br>
            "name": "env",<br>
            "offset": "384K",<br>
            "size": "64K"<br>
        },<br>
        {<br>
<br>
            "name": "opensbi",<br>
            "offset": "1M",<br>
            "size": "1M",<br>
            "image": "fw_dynamic.itb"<br>
        },<br>
        {<br>
<br>
           "name": "uboot",<br>
            "offset": "2M",<br>
            "size": "2M",<br>
            "image": "u-boot.itb"<br>
        },<br>
        {<br>
            "name": "bootfs",<br>
            "type": "FAT32",<br>
            "offset": "4M",<br>
            "size": "-",<br>
            "image": [<br>
                "factory/bootinfo_emmc.bin",<br>
                "factory/bootinfo_spinand.bin",<br>
                "factory/bootinfo_spinor.bin",<br>
               "factory/FSBL.bin",<br>
                "fw_dynamic.itb",<br>
               "u-boot.itb",<br>
                "bootfs.ext4",<br>
                "rootfs.ext4",<br>
                "env.bin",<br>
                "/partition_.+.json$/"<br>
            ]<br>
        }<br>
    ]<br>
}

