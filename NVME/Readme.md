
lu_zero
Luca Barbato

kvic
3d
in /boot/env_k1-x.txt put

console=ttyS0,115200
init=/init
bootdelay=0
loglevel=8

nvme_root=/dev/nvme0n1p6
knl_name=Image.gz.itb
ramdisk_name=initramfs.img
commonargs=setenv bootargs earlycon=${earlycon} earlyprintk console=tty1 console=${console} loglevel=${loglevel} clk_ignore_unused swiotlb=65536 rdinit=${init} root=${nvme_root}
autoboot=run commonargs; run detect_dtb; run loadknl; run loaddtb; run loadramdisk; bootm ${kernel_addr_r} ${ramdisk_combo} ${dtb_addr};
