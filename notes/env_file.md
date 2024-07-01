Env Print

=> env print
arch=riscv
autoboot=if test ${boot_device} = nand; then run nand_boot; elif test ${boot_device} = nor; then run nor_boot; elif test ${boot_device} = mmc; then run mmc_boot; fi;
autoload=0
baudrate=115200
board=k1-x
board_name=k1-x
boot_default=echo "Current Boot Device: ${boot_device}"
boot_device=mmc
boot_devnum=2
bootargs=earlycon=sbi earlyprintk console=tty1 console=ttyS0,115200 loglevel=8 clk_ignore_unused swiotlb=65536 rdinit=/init root=/dev/mmcblk2p6 rootwait rootfstype=ext4
bootcmd=run autoboot; echo "run autoboot"
bootdelay=0
bootfs_devname=mmc
bootfs_part=5
bootmenu_0="-------- Boot Options --------"=run boot_default
bootmenu_1="Boot from Nor"=run nor_boot
bootmenu_2="Boot from Nand"=run nand_boot
bootmenu_3="Boot from MMC"=run mmc_boot
bootmenu_4="Autoboot"=run autoboot
bootmenu_5="Show current Boot Device"=run boot_default
bootmenu_6="-------- Flash Options --------"=run flash_default
bootmenu_7="recovery from usb"=run flash_from_usb
bootmenu_8="recovery from mmc"=run flash_from_mmc
bootmenu_9="recovery from net"=run flash_from_net
bootmenu_delay=5
commonargs=setenv bootargs earlycon=${earlycon} earlyprintk console=tty1 console=${console} loglevel=${loglevel} clk_ignore_unused swiotlb=65536 rdinit=${init}
console=ttyS0,115200
cpu=x60
detect_dtb=echo "product_name: ${product_name}"; run dtb_env; echo "select ${dtb_name} to load";
device_version=1
dtb_addr=0x1F000000
dtb_dir=spacemit
dtb_env=if test -n "${product_name}"; then if test "${product_name}" = k1_evb; then setenv dtb_name ${dtb_dir}/k1-x_evb.dtb; elif test "${product_name}" = k1_deb1; then setenv dtb_name ${d;
dtb_name=spacemit/k1-x_deb1.dtb
earlycon=sbi
eeprom_i2c_index=2
eeprom_pin_group=0
eth1addr=FE:FE:FE:73:08:10
ethaddr=FE:FE:FE:73:08:0F
fdtcontroladdr=76ec1690
fileaddr=20000000
filesize=cc1a85
flash_default=echo "Returning to Boot Menu..."
flash_from_mmc=echo "recovery from mmc...... " flash_image mmc;
flash_from_net=echo "recovery from net...... " flash_image net;
flash_from_usb=echo "recovery from usb...... "; flash_image usb;
gatewayip=192.168.1.1
init=/init
ipaddr=192.168.1.15
kernel_addr_r=0x10000000
kernel_comp_addr_r=0x18000000
kernel_comp_size=0x4000000
knl_name=vmlinux
loadaddr=0x200000
loaddtb=echo "Loading dtb..."; if load ${bootfs_devname} ${boot_devnum}:${bootfs_part} ${dtb_addr} ${dtb_name}; then else echo "load dtb from bootfs fail, use built-in dtb"; setenv dtb_add;
loadknl=echo "Loading kernel..."; load ${bootfs_devname} ${boot_devnum}:${bootfs_part} ${kernel_addr_r} ${knl_name};
loadramdisk=echo "Loading ramdisk ..."; if load ${bootfs_devname} ${boot_devnum}:${bootfs_part} ${ramdisk_addr} ${ramdisk_name}; then size ${bootfs_devname} ${boot_devnum}:${bootfs_part} $;
loglevel=8
manufacture_date=01/16/2023 11:02:20
manufacturer=spacemit
mmc_boot=echo "Try to boot from MMC${boot_devnum} ..."; run commonargs; run set_mmc_root; run set_mmc_args; run detect_dtb; run loadknl; run loaddtb; run loadramdisk; bootm ${kernel_addr_r"
mmc_root=/dev/mmcblk2p6
mmc_rootfstype=ext4
mtdids=nor0=spi-nor
mtdparts=spi-nor:64K@0(bootinfo),64K@64K(private),256K@128K(fsbl),64K@384K(env),192K@448K(opensbi),-@640K(uboot)
net_data_path=spacemit_flash_file/net_flash_file/
netdev=eth0
netmask=255.255.255.0
nor_boot=echo "Try to boot from NVMe ..."; run commonargs; run set_nvme_root; run set_nor_args; run detect_dtb; run loadknl; run loaddtb; run loadramdisk; bootm ${kernel_addr_r} ${ramdisk_"
nor_root=/dev/mtdblock6
nor_rootfstype=squashfs
nvme_root=/dev/mmcblk0p6
phy_link_time=10000
phyaddr0=1
pmic_type=0
product_name=k1-x_deb1
pxefile_addr_r=0x0c200000
ram_size=mem=4096MB
ramdisk_addr=0x20000000
ramdisk_combo=0x20000000:cc1a85
ramdisk_name=initrd.img-6.1.15
ramdisk_size=cc1a85
rootfs_part=6
rootfs_part_to_ul=echo "set rootfs_part to ul"; setexpr temp_num_0 ${rootfs_part} / a; setexpr temp_num_1 ${rootfs_part} % a; setenv rootfs_part ${temp_num_0}${temp_num_1};
scriptaddr=0x2c100000
sdk_version=1
serial#=44718a429d54
serverip=10.0.92.134
set_mmc_args=setenv bootargs "${bootargs}" root=${mmc_root} rootwait rootfstype=${mmc_rootfstype};
set_mmc_root=part number mmc ${boot_devnum} rootfs rootfs_part; setexpr rootfs_part ${rootfs_part} + 0; if test ${rootfs_part} > 9 ; then run rootfs_part_to_ul;fi; echo "get rootfs_part in;
set_nor_args=setenv bootargs ${bootargs} mtdparts=${mtdparts} root=${nvme_root} rootfstype=ext4
set_nvme_root=part number nvme ${boot_devnum} rootfs rootfs_part; setexpr rootfs_part ${rootfs_part} + 0; if test ${rootfs_part} > 9 ; then run rootfs_part_to_ul;fi; echo "get rootfs_part ;
splashfile=bianbu.bmp
splashimage=0x20000000
splashpos=m,m
splashsource=emmc_fs
stderr=serial
stdin=serial,usbkbd
stdout=serial
stdout_flash=serial,vidconsole
vendor=spacemit
=> 
