pcie_dw_k1x_probe, 662
Now init Rterm...
pcie prot id = 1, porta_init_done = 0
Now waiting portA resister tuning done...
porta redonly_reg2: 00006d47
pcie_rcal = 0x00006d47
pcie port id = 1, lane num = 2
Now int init_puphy...
waiting pll lock...
Now finish init_puphy....
pcie_dw_k1x pcie@ca400000: Unable to get phy0pcie_dw_k1x pcie@ca400000: Unable to get phy1PCIE-0: Link up (Gen2-x2, Bus0)
spacemit_dpu_probe:video device dpu@c0340000 
spacemit_dpu_probe:display device hdmi@c0400500
Found device 'hdmi@c0400500', disp_uc_priv=0000000076ed62e0
hdmi_phy_wait_for_hpd() hdmi get hpd signal 
fb=7f700000, size=1920 1080
initialize_console_log_buffer
Have allocated memory for console log buffer
In:    serial
Out:   serial
Err:   serial
ddr_freq_change: ddr frequency change from level 0 to 6
Change DDR data rate to 2400MT/s
Default to 100kHz
EEPROM: TlvInfo v1 len=32
valid ethaddr: fe:fe:fe:73:08:0f
Serial number is valid.
Cannot find TLV data: product_name
Cannot find TLV data: manufacture_date
Cannot find TLV data: manufacturer
Cannot find TLV data: device_version
Cannot find TLV data: sdk_version
Read PMIC reg ab value f0
163 bytes read in 7 ms (22.5 KiB/s)
## Info: input data size = 164 = 0xA4
load env_k1-x.txt from bootfs successful
Net:   RGMII interface
eth0: ethernet@cac80000
Autoboot in 0 seconds
Try to boot from MMC0 ...
get rootfs_part index:6
product_name: k1-x_deb1
match dtb by product_name: spacemit/k1-x_deb1.dtb
select spacemit/k1-x_deb1.dtb to load
Loading kernel...
13084372 bytes read in 803 ms (15.5 MiB/s)
Loading dtb...
74507 bytes read in 20 ms (3.6 MiB/s)
Loading ramdisk ...
6689343 bytes read in 416 ms (15.3 MiB/s)
## Loading kernel from FIT Image at 10000000 ...
   Using 'conf-default' configuration
   Verifying Hash Integrity ... OK
   Trying 'kernel' kernel subimage
     Description:  Linux 6.1.15
     Type:         Kernel Image
     Compression:  gzip compressed
     Data Start:   0x100000bc
     Data Size:    13082784 Bytes = 12.5 MiB
     Architecture: RISC-V
     OS:           Linux
     Load Address: 0x01400000
     Entry Point:  0x01400000
     Hash algo:    crc32
     Hash value:   ae8da93b
   Verifying Hash Integrity ... crc32+ OK
## Flattened Device Tree blob at 1f000000
   Booting using the fdt blob at 0x1f000000
   Uncompressing Kernel Image
   Loading Ramdisk to 7685e000, end 76ebf23f ... OK
   Loading Device Tree to 0000000076848000, end 000000007685d30a ... OK

Starting kernel ...

efi_free_pool: illegal free 0x0000000076dbd040
efi_free_pool: illegal free 0x0000000076dba040
efi_free_pool: illegal free 0x0000000076db8040
efi_free_pool: illegal free 0x0000000076db6040
efi_free_pool: illegal free 0x0000000076db4040
efi_free_pool: illegal free 0x0000000076db2040
efi_free_pool: illegal free 0x0000000076db0040
[    0.000000] Linux version 6.1.15 (root@bianbu-build-deb-37zn1-v692p) (gcc (Ubuntu 13.2.0-4ubuntu3-bb2) 13.2.0, GNU ld (GNU Binutils for Ubuntu) 2.41) #1.0~rc1 SMP PREEMPT Mon Apr 29 09:4
[    0.000000] OF: fdt: Ignoring memory range 0x0 - 0x1400000
[    0.000000] Machine model: spacemit k1-x deb1 board
[    0.000000] earlycon: sbi0 at I/O port 0x0 (options '')
[    0.000000] printk: bootconsole [sbi0] enabled
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 16 MiB at 0x000000007f000000
[    0.000000] Reserved memory: created CMA memory pool at 0x000000005e800000, size 384 MiB
[    0.000000] OF: reserved mem: initialized node linux,cma, compatible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x000000002ff40000, size 0 MiB
[    0.000000] OF: reserved mem: initialized node dpu_reserved@2ff40000, compatible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x0000000030206000, size 0 MiB
[    0.000000] OF: reserved mem: initialized node vdev0buffer@30206000, compatible id shared-dma-pool
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000001400000-0x000000007fffffff]
[    0.000000]   Normal   [mem 0x0000000080000000-0x000000017fffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000001400000-0x000000002ff3ffff]
[    0.000000]   node   0: [mem 0x000000002ff40000-0x000000003033ffff]
[    0.000000]   node   0: [mem 0x0000000030340000-0x000000007fffffff]
[    0.000000]   node   0: [mem 0x0000000100000000-0x000000017fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000001400000-0x000000017fffffff]
[    0.000000] On node 0, zone Normal: 524288 pages in unavailable ranges
[    0.000000] SBI specification v1.0 detected
[    0.000000] SBI implementation ID=0x1 Version=0x10003
[    0.000000] SBI IPI extension detected
[    0.000000] SBI RFENCE extension detected
[    0.000000] SBI HSM extension detected
[    0.000000] riscv: base ISA extensions acdfimv
[    0.000000] riscv: ELF capabilities acdfimv
[    0.000000] percpu: Embedded 27 pages/cpu s72616 r8192 d29784 u110592
[    0.000000] pcpu-alloc: s72616 r8192 d29784 u110592 alloc=27*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 [0] 4 [0] 5 [0] 6 [0] 7 
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 1018960
[    0.000000] Kernel command line: earlycon=sbi earlyprintk console=tty1 console=ttyS0,115200 loglevel=8 clk_ignore_unused swiotlb=65536 rdinit=/init root=/dev/mmcblk0p6 rootwait rootfsty4
[    0.000000] Dentry cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.000000] Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] software IO TLB: area num 8.
[    0.000000] software IO TLB: mapped [mem 0x0000000077000000-0x000000007f000000] (128MB)
[    0.000000] Memory: 3480672K/4173824K available (16177K kernel code, 6710K rwdata, 8192K rodata, 2283K init, 561K bss, 283552K reserved, 409600K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
[    0.000000] 
[    0.000000] **********************************************************
[    0.000000] **   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **
[    0.000000] **                                                      **
[    0.000000] ** trace_printk() being used. Allocating extra memory.  **
[    0.000000] **                                                      **
[    0.000000] ** This means that this is a DEBUG kernel and it is     **
[    0.000000] ** unsafe for production use.                           **
[    0.000000] **                                                      **
[    0.000000] ** If you see this message and you are not debugging    **
[    0.000000] ** the kernel, report this immediately to your vendor!  **
[    0.000000] **                                                      **
[    0.000000] **   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **
[    0.000000] **********************************************************
[    0.000000] trace event string verifier disabled
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000]  Trampoline variant of Tasks RCU enabled.
[    0.000000]  Tracing variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] riscv-intc: 64 local interrupts mapped
[    0.000000] plic: interrupt-controller@e0000000: mapped 159 interrupts with 8 handlers for 16 contexts.
[    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on contention.
[    0.000000] riscv-timer: Timer interrupt in S-mode is available via sstc extension
[    0.000000] riscv-timer: riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [0]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
[    0.000001] sched_clock: 64 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
[    0.008534] Console: colour dummy device 80x25
[    0.013123] printk: console [tty1] enabled
[    0.016806] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=96000)
[    0.027102] pid_max: default: 32768 minimum: 301
[    0.032019] Mount-cache hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.039272] Mountpoint-cache hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.049374] cblist_init_generic: Setting adjustable number of callback queues.
[    0.054509] cblist_init_generic: Setting shift to 3 and lim to 1.
[    0.060699] cblist_init_generic: Setting shift to 3 and lim to 1.
[    0.066869] riscv: ELF compat mode unsupported
[    0.066885] ASID allocator using 16 bits (65536 entries)
[    0.076769] rcu: Hierarchical SRCU implementation.
[    0.081531] rcu:     Max phase no-delay instances is 1000.
[    0.087606] EFI services will not be available.
[    0.092090] smp: Bringing up secondary CPUs ...
[    0.105197] smp: Brought up 1 node, 8 CPUs
[    0.108806] devtmpfs: initialized
[    0.123596] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.130604] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
[    0.143501] pinctrl core: initialized pinctrl subsystem
[    0.147251] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.152901] DMA: preallocated 512 KiB GFP_KERNEL pool for atomic allocations
[    0.159179] DMA: preallocated 512 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.167383] display class register
[    0.170635] thermal_sys: Registered thermal governor 'step_wise'
[    0.170685] cpuidle: using governor menu
[    0.180769] suspend: SBI SUSP extension detected
[    0.192729] pinctrl-single d401e000.pinctrl: 256 pins, size 1024
[    0.207641] platform c0400500.hdmi: Fixing up cyclic dependency with soc:port@c0440000
[    0.233885] HugeTLB: registered 1.00 GiB page size, pre-allocated 0 pages
[    0.237889] HugeTLB: 0 KiB vmemmap can be freed for a 1.00 GiB page
[    0.244186] HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pages
[    0.251057] HugeTLB: 0 KiB vmemmap can be freed for a 2.00 MiB page
[    0.325040] raid6: int64x8  gen()   840 MB/s
[    0.393150] raid6: int64x4  gen()  1208 MB/s
[    0.461270] raid6: int64x2  gen()  1260 MB/s
[    0.529393] raid6: int64x1  gen()  1053 MB/s
[    0.530802] raid6: using algorithm int64x2 gen() 1260 MB/s
[    0.601517] raid6: .... xor() 627 MB/s, rmw enabled
[    0.603536] raid6: using intx1 recovery algorithm
[    0.611304] mmp-pdma d4000000.pdma: PM domain power-domain@SPT_PD_BUS will not be powered off
[    0.618579] SCSI subsystem initialized
[    0.621081] libata version 3.00 loaded.
[    0.624912] usbcore: registered new interface driver usbfs
[    0.630328] usbcore: registered new interface driver hub
[    0.635689] usbcore: registered new device driver usb
[    0.645490] spacemit-pmic 8-0041: mask_invert=true is deprecated; please switch to unmask_base
[    0.658428] spacemit-regulator spacemit-regulator@spm8821: DMA mask not set
[    0.705239] mc: Linux media interface: v0.10
[    0.706721] videodev: Linux video capture interface: v2.00
[    0.712269] pps_core: LinuxPPS API ver. 1 registered
[    0.717258] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.726482] PTP clock support registered
[    0.731211] Advanced Linux Sound Architecture Driver Initialized.
[    0.737089] Bluetooth: Core ver 2.22
[    0.740285] NET: Registered PF_BLUETOOTH protocol family
[    0.745650] Bluetooth: HCI device and connection manager initialized
[    0.752074] Bluetooth: HCI socket layer initialized
[    0.757018] Bluetooth: L2CAP socket layer initialized
[    0.762154] Bluetooth: SCO socket layer initialized
[    0.767414] vgaarb: loaded
[    0.770397] clocksource: Switched to clocksource riscv_clocksource
[    0.776535] VFS: Disk quotas dquot_6.6.0
[    0.780175] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.795509] NET: Registered PF_INET protocol family
[    0.797826] IP idents hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.810212] tcp_listen_portaddr_hash hash table entries: 2048 (order: 3, 32768 bytes, linear)
[    0.816019] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.823799] TCP established hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    0.831915] TCP bind hash table entries: 32768 (order: 8, 1048576 bytes, linear)
[    0.840466] TCP: Hash tables configured (established 32768 bind 32768)
[    0.845952] UDP hash table entries: 2048 (order: 4, 65536 bytes, linear)
[    0.852604] UDP-Lite hash table entries: 2048 (order: 4, 65536 bytes, linear)
[    0.859996] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.866068] RPC: Registered named UNIX socket transport module.
[    0.871481] RPC: Registered udp transport module.
[    0.876232] RPC: Registered tcp transport module.
[    0.881006] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.888219] PCI: CLS 0 bytes, default 64
[    0.892015] Unpacking initramfs...
[    0.893002] Initialise system trusted keyrings
[    0.899855] workingset: timestamp_bits=46 max_order=20 bucket_order=0
[    0.913747] NFS: Registering the id_resolver key type
[    0.916058] Key type id_resolver registered
[    0.920231] Key type id_legacy registered
[    0.924431] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.931101] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
[    0.940643] Key type cifs.idmap registered
[    0.942747] ntfs: driver 2.1.32 [Flags: R/W].
[    0.947326] ntfs3: Max link count 4000
[    0.950957] ntfs3: Enabled Linux POSIX ACLs support
[    0.955905] ntfs3: Read-only LZX/Xpress compression included
[    0.962010] fuse: init (API version 7.37)
[    0.966199] SGI XFS with ACLs, security attributes, quota, no debug enabled
[    1.023317] NET: Registered PF_ALG protocol family
[    1.025315] xor: measuring software checksum speed
[    1.032981]    8regs           :  3494 MB/sec
[    1.037382]    32regs          :  3509 MB/sec
[    1.041426]    rvv             :  4068 MB/sec
[    1.043426] xor: using function: rvv (4068 MB/sec)
[    1.048299] async_tx: api initialized (async)
[    1.052731] Key type asymmetric registered
[    1.056887] Asymmetric key parser 'x509' registered
[    1.062242] io scheduler mq-deadline registered
[    1.066448] io scheduler kyber registered
[    1.073321] spacemit-pmic-pinctrl spacemit-pinctrl@spm8821: DMA mask not set
[    1.082201] Now init Rterm...
[    1.082331] pcie prot id = 1, porta_init_done = 0
[    1.087139] Now waiting portA resister tuning done...
[    1.092237] porta redonly_reg2: 00006d47
[    1.096226] pcie_rcal = 0x00006d47
[    1.099692] pcie port id = 1, lane num = 2
[    1.103864] Now int init_puphy...
[    1.107250] waiting pll lock...
[    1.110450] Now finish init_puphy....
[    1.114461] k1x-dwc-pcie ca400000.pcie: host bridge /soc/pcie@ca400000 ranges:
[    1.121551] k1x-dwc-pcie ca400000.pcie:       IO 0x0090002000..0x0090101fff -> 0x0090002000
[    1.125014] Freeing initrd memory: 6532K
[    1.129918] k1x-dwc-pcie ca400000.pcie:      MEM 0x0090102000..0x009f101fff -> 0x0090102000
[    1.242459] Link up, Gen1
[    1.242599] (u64)pp->msi_data =7e000000
[    1.246148] (u64)pp->msix_addr =7e001000
[    1.250175] k1x-dwc-pcie ca400000.pcie: iATU unroll: enabled
[    1.255875] k1x-dwc-pcie ca400000.pcie: iATU regions: 8 ob, 8 ib, align 4K, limit 4G
[    1.263718] k1x-dwc-pcie ca400000.pcie: PCIe Gen.1 x2 link up
[    1.269677] k1x-dwc-pcie ca400000.pcie: PCI host bridge to bus 0001:00
[    1.276105] pci_bus 0001:00: root bus resource [bus 00-ff]
[    1.281653] pci_bus 0001:00: root bus resource [io  0x0000-0xfffff] (bus address [0x90002000-0x90101fff])
[    1.291294] pci_bus 0001:00: root bus resource [mem 0x90102000-0x9f101fff]
[    1.298259] pci 0001:00:00.0: [1e5d:3003] type 01 class 0x060400
[    1.304321] pci 0001:00:00.0: reg 0x10: [mem 0x00000000-0x000fffff]
[    1.310648] pci 0001:00:00.0: reg 0x14: [mem 0x00000000-0x000fffff]
[    1.317038] pci 0001:00:00.0: supports D1
[    1.321060] pci 0001:00:00.0: PME# supported from D0 D1 D3hot D3cold
[    1.331413] pci 0001:01:00.0: [8086:f1a8] type 00 class 0x010802
[    1.334657] pci 0001:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
[    1.341888] pci 0001:01:00.0: 8.000 Gb/s available PCIe bandwidth, limited by 5.0 GT/s PCIe x2 link at 0001:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)
[    1.366448] pci_bus 0001:01: busn_res: [bus 01-ff] end is updated to 01
[    1.370239] pci 0001:00:00.0: BAR 0: assigned [mem 0x90200000-0x902fffff]
[    1.377089] pci 0001:00:00.0: BAR 1: assigned [mem 0x90300000-0x903fffff]
[    1.383939] pci 0001:00:00.0: BAR 8: assigned [mem 0x90400000-0x904fffff]
[    1.390798] pci 0001:01:00.0: BAR 0: assigned [mem 0x90400000-0x90403fff 64bit]
[    1.398200] pci 0001:00:00.0: PCI bridge to [bus 01]
[    1.403208] pci 0001:00:00.0:   bridge window [mem 0x90400000-0x904fffff]
[    1.412034] pcieport 0001:00:00.0: PME: Signaling with IRQ 56
[    1.416346] pcieport 0001:00:00.0: AER: enabled with IRQ 56
[    1.422223] Now init Rterm...
[    1.424580] pcie prot id = 2, porta_init_done = 0
[    1.429411] Now waiting portA resister tuning done...
[    1.434469] porta redonly_reg2: 00006d47
[    1.438446] pcie_rcal = 0x00006d47
[    1.441910] pcie port id = 2, lane num = 2
[    1.446086] Now int init_puphy...
[    1.449471] waiting pll lock...
[    1.452679] Now finish init_puphy....
[    1.456552] k1x-dwc-pcie ca800000.pcie: host bridge /soc/pcie@ca800000 ranges:
[    1.463743] k1x-dwc-pcie ca800000.pcie:       IO 0x00a0002000..0x00a0101fff -> 0x00a0002000
[    1.472157] k1x-dwc-pcie ca800000.pcie:      MEM 0x00a0102000..0x00b0101fff -> 0x00a0102000
[    1.580586] Link up, Gen1
[    1.580673] (u64)pp->msi_data =7e002000
[    1.584271] (u64)pp->msix_addr =7e003000
[    1.588270] k1x-dwc-pcie ca800000.pcie: iATU unroll: enabled
[    1.593985] k1x-dwc-pcie ca800000.pcie: iATU regions: 8 ob, 8 ib, align 4K, limit 4G
[    1.601823] ltssm enable
[    2.526394] k1x-dwc-pcie ca800000.pcie: Phy link never came up
[    2.529534] k1x-dwc-pcie ca800000.pcie: PCI host bridge to bus 0002:00
[    2.535994] pci_bus 0002:00: root bus resource [bus 00-ff]
[    2.541541] pci_bus 0002:00: root bus resource [io  0x100000-0x1fffff] (bus address [0xa0002000-0xa0101fff])
[    2.551442] pci_bus 0002:00: root bus resource [mem 0xa0102000-0xb0101fff]
[    2.558409] pci 0002:00:00.0: [1e5d:3003] type 01 class 0x060400
[    2.564469] pci 0002:00:00.0: reg 0x10: [mem 0x00000000-0x000fffff]
[    2.570799] pci 0002:00:00.0: reg 0x14: [mem 0x00000000-0x000fffff]
[    2.577189] pci 0002:00:00.0: supports D1
[    2.581214] pci 0002:00:00.0: PME# supported from D0 D1 D3hot D3cold
[    2.591544] pci_bus 0002:01: busn_res: [bus 01-ff] end is updated to 01
[    2.595359] pci 0002:00:00.0: BAR 0: assigned [mem 0xa0200000-0xa02fffff]
[    2.602187] pci 0002:00:00.0: BAR 1: assigned [mem 0xa0300000-0xa03fffff]
[    2.609046] pci 0002:00:00.0: PCI bridge to [bus 01]
[    2.616087] pcieport 0002:00:00.0: PME: Signaling with IRQ 60
[    2.620230] pcieport 0002:00:00.0: AER: enabled with IRQ 60
[    2.626123] pwm-backlight soc:lcd_backlight: supply power not found, using dummy regulator
[    2.647246] jpu c02f8000.jpu: driver probe successfully
[    2.652640] spacemit-rf-pwrseq rf-pwrseq: turn power on
[    2.656045] spacemit-rf-pwrseq rf-pwrseq: check voltage: 1800000
[    2.729979] pxa2xx-uart d4017000.serial: no edge-wakeup-pin defined
[    2.733535] d4017000.serial: ttyS0 at MMIO 0xd4017000 (irq = 63, base_baud = 921250) is a UART1
[    2.742337] printk: console [ttyS0] enabled
[    2.742337] printk: console [ttyS0] enabled
[    2.750678] printk: bootconsole [sbi0] disabled
[    2.750678] printk: bootconsole [sbi0] disabled
[    2.760264] pxa2xx-uart d4017000.serial: uart clk_rate: 14740000
[    2.769205] pxa2xx-uart d4017100.uart: no edge-wakeup-pin defined
[    2.775472] d4017100.uart: ttyS1 at MMIO 0xd4017100 (irq = 64, base_baud = 3600000) is a UART2
[    2.784563] pxa2xx-uart d4017100.uart: uart clk_rate: 57600000
[    2.819392] [drm] init_lt8911exb()
[    2.824414] PVR_K:(Error):     1: TraceFS not found in PVRGpuTraceInitFTraceClockSource() [198]
[    2.842885] PVR_K:  1: Read BVNC 36.29.52.182 from HW device registers
[    2.849603] PVR_K:  1: RGX Device registered BVNC 36.29.52.182 with 1 core in the system
[    2.858780] [drm] Initialized pvr 23.2.6460340 20170530 for cac00000.imggpu on minor 0
[    2.876872] loop: module loaded
[    2.882716] nvme nvme0: pci function 0001:01:00.0
[    2.887589] nvme 0001:01:00.0: enabling device (0000 -> 0002)
[    2.888524] Rounding down aligned max_sectors from 4294967295 to 4294967288
[    2.900804] db_root: cannot open: /etc/target
[    2.906726] k1x-qspi d420c000.spi: config mfp for cs:[0]
[    2.912364] k1x-qspi d420c000.spi: AHB buf size: 512
[    2.913148] nvme nvme0: 8/0/0 default/read/poll queues
[    2.917945] spi-nor spi4.0: unrecognized JEDEC id bytes: 00 00 00 00 00 00
[    2.929409]  nvme0n1: p1 p2 p3 p4 p5 p6
[    2.929663] k1x-qspi d420c000.spi: Runtime PM usage count underflow!
[    2.941351] CAN device driver interface
[    3.299349] usbcore: registered new interface driver ax88179_178a
[    3.305623] usbcore: registered new interface driver cdc_ether
[    3.311582] usbcore: registered new interface driver cdc_subset
[    3.317633] usbcore: registered new interface driver zaurus
[    3.323358] usbcore: registered new interface driver cdc_ncm
[    3.331060] spacemit-k1x-combphy c0b10000.phy: USB3 PHY init.
[    3.338498] mv-ehci mv-ehci: Spacemit EHCI
[    3.342704] mv-ehci mv-ehci: new USB bus registered, assigned bus number 1
[    3.349886] mv-ehci mv-ehci: irq 79, io mem 0xc0980100
[    3.370405] mv-ehci mv-ehci: USB 2.0 started, EHCI 1.00
[    3.376631] hub 1-0:1.0: USB hub found
[    3.380500] hub 1-0:1.0: 1 port detected
[    3.386105] xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
[    3.391734] xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 2
[    3.399782] xhci-hcd xhci-hcd.0.auto: hcc params 0x0220fe6d hci version 0x110 quirks 0x0000000000010010
[    3.409794] xhci-hcd xhci-hcd.0.auto: irq 78, io mem 0xc0a00000
[    3.415989] xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
[    3.421587] xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 3
[    3.429390] xhci-hcd xhci-hcd.0.auto: Host supports USB 3.0 SuperSpeed
[    3.436709] hub 2-0:1.0: USB hub found
[    3.440576] hub 2-0:1.0: 1 port detected
[    3.444963] usb usb3: We don't know the algorithms for LPM for this host, disabling LPM.
[    3.453808] hub 3-0:1.0: USB hub found
[    3.457654] hub 3-0:1.0: 1 port detected
[    3.462345] usbcore: registered new interface driver uas
[    3.467950] usbcore: registered new interface driver usb-storage
[    3.474235] spacemit-usb3-hub soc:usb3hub@0: v1.0.2
[    3.498471] spacemit-usb3-hub soc:usb3hub@0: onboard usb hub driver probed, hub configured
[    3.507368] K1X_UDC: mv_udc_probe enter ...
[    3.511939] udc_stop ...
[    3.514653] mv-udc mv-udc:  use 32bit DMA mask
[    3.519215] mv_udc: dqh size = 0x800  udc->ep_dqh_dma = 0x3814000
[    3.525936] mv-udc mv-udc: successful probe UDC device without clock gating.
[    3.533417] f_tcm: UAS support multiple cmds
[    3.537771] Gt9xx driver installing..
[    3.541957] spacemit-pmic-pwrkey spacemit-pwrkey@spm8821: DMA mask not set
[    3.572312] input: spacemit pwrkey as /devices/platform/soc/d401d800.i2c/i2c-8/8-0041/spacemit-pwrkey@spm8821/input/input0
[    3.584536] spacemit-pmic-rtc spacemit-rtc@spm8821: DMA mask not set
[    3.605750] spacemit-pmic-rtc spacemit-rtc@spm8821: registered as rtc0
[    3.614310] spacemit-pmic-rtc spacemit-rtc@spm8821: setting system clock to 2000-01-01T00:00:00 UTC (946684800)
[    3.625958] i2c_dev: i2c /dev entries driver
[    3.632091] ccu_mix_set_parent of vpu_clk timeout
[    3.637573] ccu_mix_set_rate of vpu_clk timeout
[    3.655979] MVX dev: Linlon v5276 identified. cores=2, nlsid=4, id=0, fuse=00000000, hw_id=00005276, hw_rev=00000050
[    3.675626] d420a000.csiphy begin to probe
[    3.679896] d420a000.csiphy probed
[    3.680025] d4206000.csiphy begin to probe
[    3.687809] d4206000.csiphy probed
[    3.698529] d420a000.ccic begin to probe
[    3.706177] k1xccic d420a000.ccic: ipe irq: 82
[    3.710957] d420a000.ccic probed
[    3.730406] d420a800.ccic begin to probe
[    3.737904] k1xccic d420a800.ccic: ipe irq: 83
[    3.742695] d420a800.ccic probed
[    3.762402] d4206000.ccic begin to probe
[    3.769872] k1xccic d4206000.ccic: ipe irq: 84
[    3.774474] d4206000.ccic probed
[    3.837014] acquire ccic0 ctrl dev succeed
[    3.844493] acquire ccic1 ctrl dev succeed
[    3.848812] acquire ccic2 ctrl dev succeed
[    3.859586] usbcore: registered new interface driver uvcvideo
[    3.868028] System boots up not because of SoC watchdog reset.
[    3.883697] device-mapper: uevent: version 1.0.3
[    3.888714] device-mapper: ioctl: 4.47.0-ioctl (2022-07-28) initialised: dm-devel@redhat.com
[    3.898068] device-mapper: multipath round-robin: version 1.2.0 loaded
[    3.904726] device-mapper: multipath queue-length: version 0.2.0 loaded
[    3.911534] device-mapper: multipath service-time: version 0.3.0 loaded
[    3.918249] device-mapper: multipath historical-service-time: version 0.1.1 loaded
[    3.926075] device-mapper: raid: Loading target version 1.15.1
[    3.932122] Bluetooth: HCI UART driver ver 2.3
[    3.936641] Bluetooth: HCI UART protocol H4 registered
[    3.941917] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    3.960631] sdhci: Secure Digital Host Controller Interface driver
[    3.967094] sdhci: Copyright(c) Pierre Ossman
[    3.971504] sdhci-pltfm: SDHCI platform and OF driver helper
[    3.977882] sdhci-spacemit d4280000.sdh: Got CD GPIO
[    4.018649] mmc0: SDHCI controller on d4280000.sdh [d4280000.sdh] using ADMA
[    4.054413] mmc1: SDHCI controller on d4280800.sdh [d4280800.sdh] using ADMA
[    4.061558] sdio: save sdio_host <- (____ptrval____)
[    4.118001] mmc0: set tx_delaycode: 127
[    4.124899] mmc0: pass window [6 70) 
[    4.132404] mmc0: pass window [73 189) 
[    4.138341] mmc0: pass window [224 255) 
[    4.142297] mmc0: tuning done, use the firstly delay_code:130
[    4.148512] mmc0: new ultra high speed SDR104 SDXC card at address aaaa
[    4.155871] mmcblk0: mmc0:aaaa SR512 477 GiB 
[    4.165882]  mmcblk0: p1 p2 p3 p4 p5 p6
[    4.187182] mmc2: new HS400 Enhanced strobe MMC card at address 0001
[    4.194483] mmcblk2: mmc2:0001 AJTD4R 14.6 GiB 
[    4.202361]  mmcblk2: p1 p2 p3 p4 p5 p6
[    4.207506] mmcblk2boot0: mmc2:0001 AJTD4R 4.00 MiB 
[    4.213932] mmcblk2boot1: mmc2:0001 AJTD4R 4.00 MiB 
[    4.220155] mmcblk2rpmb: mmc2:0001 AJTD4R 4.00 MiB, chardev (242:0)
[    4.226568] mmc2: SDHCI controller on d4281000.sdh [d4281000.sdh] using ADMA
[    4.236452] usbcore: registered new interface driver usbhid
[    4.242107] usbhid: USB HID core driver
[    4.247496] remoteproc remoteproc0: rcpu_rproc is available
[    4.253465] remoteproc remoteproc0: powering up rcpu_rproc
[    4.255094] riscv-pmu-sbi: SBI PMU extension is available
[    4.259047] remoteproc remoteproc0: Booting fw image esos.elf, size 99100
[    4.264605] riscv-pmu-sbi: 16 firmware and 18 hardware counters
[    4.274634] rproc-virtio rproc-virtio.2.auto: Failed to set DMA mask 7fffffff. Trying to continue... (-EIO)
[    4.288461] rproc-virtio rproc-virtio.2.auto: assigned reserved memory node vdev0buffer@30206000
[    4.288698] es8326 2-0019: assuming static mclk
[    4.301343] virtio_rpmsg_bus virtio0: rpmsg host is online
[    4.301814] virtio_rpmsg_bus virtio0: creating channel rcpu-pwr-management-service addr 0x400
[    4.301972] k1x_rproc virtio0.rcpu-pwr-management-service.-1.1024: new channel: 0x400 -> 0x400!
[    4.302549] enter spacemit_snd_sspa_pdev_probe
[    4.303294] enter asoc_i2s_sspa_probe
[    4.304319] spacemit_snd_dma_pdev_probe enter: dev name c08d0400.spacemit_snd_dma_hdmi
[    4.304327] spacemit_snd_dma_pdev_probe, start=0xc08d0400, end=0xc08d3fff
[    4.304472] spacemit_snd_dma_pdev_probe enter: dev name spacemit-snd-dma0
[    4.304538] spacemit_snd_dma_pdev_probe enter: dev name spacemit-snd-dma1
[    4.305705] xt_time: kernel timezone is -0000
[    4.305731] IPVS: Registered protocols (TCP, UDP)
[    4.305790] IPVS: Connection hash table configured (size=4096, memory=32Kbytes)
[    4.305931] IPVS: ipvs loaded.
[    4.305939] IPVS: [rr] scheduler registered.
[    4.306091] Initializing XFRM netlink socket
[    4.306810] NET: Registered PF_INET6 protocol family
[    4.307597] rproc-virtio rproc-virtio.2.auto: registered virtio0 (type 7)
[    4.308056] Segment Routing with IPv6
[    4.308091] In-situ OAM (IOAM) with IPv6
[    4.308228] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
[    4.308774] NET: Registered PF_PACKET protocol family
[    4.308833] Bridge firewalling registered
[    4.308844] can: controller area network core
[    4.308987] NET: Registered PF_CAN protocol family
[    4.308993] can: raw protocol
[    4.309000] can: broadcast manager protocol
[    4.309013] can: netlink gateway - max_hops=1
[    4.309320] Bluetooth: RFCOMM TTY layer initialized
[    4.309331] Bluetooth: RFCOMM socket layer initialized
[    4.309358] Bluetooth: RFCOMM ver 1.11
[    4.309369] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    4.309377] Bluetooth: BNEP socket layer initialized
[    4.309380] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    4.309386] Bluetooth: HIDP socket layer initialized
[    4.309428] 8021q: 802.1Q VLAN Support v1.8
[    4.309485] Key type dns_resolver registered
[    4.310546] Loading compiled-in X.509 certificates
[    4.311655] Btrfs loaded, crc32c=crc32c-generic, zoned=no, fsverity=no
[    4.316252] virtio_rpmsg_bus virtio0: creating channel adma-service addr 0x401
[    4.324948] remoteproc remoteproc0: remote processor rcpu_rproc is now up
[    4.331054] spacemit_snd_pcm_new enter, dev=SSPA2-dummy_codec
[    4.333329] adma_spacemit virtio0.adma-service.-1.1025: new channel: 0x401 -> 0x401!
[    4.341173] spacemit_snd_pcm_new playback_only, dev=SSPA2-dummy_codec
[    4.355434] virtio_rpmsg_bus virtio0: creating channel can-service addr 0x402
[    4.361754] usb 2-1: new high-speed USB device number 2 using xhci-hcd
[    4.366243] Connection create success
[    4.556326] hub 2-1:1.0: USB hub found
[    4.560295] hub 2-1:1.0: 5 ports detected
[    4.632536] spacemit_snd_pcm_new enter, dev=i2s-dai0-ES8326 HiFi
[    4.644820] input: snd-es8326 Headset Jack as /devices/platform/snd-card@1/sound/card1/input1
[    4.651164] usb 3-1: new SuperSpeed USB device number 2 using xhci-hcd
[    4.655960] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    4.682498] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    4.690443] clk: Not disabling unused clocks
[    4.698830] spacemit-dpu-drv soc:port@c0440000: assigned reserved memory node dpu_reserved@2ff40000
[    4.708446] [drm] dpu plane init ok
[    4.712028] spacemit-drm-drv c0440000.display-subsystem-hdmi: bound soc:port@c0440000 (ops dpu_component_ops)
[    4.722062] [drm] spacemit_hdmi_bind() 
[    4.726296] spacemit-drm-drv c0440000.display-subsystem-hdmi: bound c0400500.hdmi (ops spacemit_hdmi_ops)
[    4.736151] [drm] spacemit_hdmi_connector_detect() 
[    4.741099] [drm] spacemit_hdmi_connector_detect() hdmi status connected
[    4.748289] [drm] Initialized spacemit 1.0.0 20231115 for c0440000.display-subsystem-hdmi on minor 1
[    4.757550] [drm] spacemit_hdmi_connector_detect() 
[    4.762492] [drm] spacemit_hdmi_connector_detect() hdmi status connected
[    4.769262] [drm] spacemit_hdmi_connector_get_modes() 
[    4.774447] [drm] spacemit_hdmi_connector_get_modes() hdmi status 0xe0001000
[    4.794909] [drm] EDID 0x0: 0x0, 0xff, 0xff, 0xff
[    4.796318] hub 3-1:1.0: USB hub found
[    4.799736] [drm] EDID 0x4: 0xff, 0xff, 0xff, 0x0
[    4.799741] [drm] EDID 0x8: 0x4, 0x69, 0xa5, 0x24
[    4.803634] hub 3-1:1.0: 4 ports detected
[    4.808338] [drm] EDID 0xc: 0x1, 0x1, 0x1, 0x1
[    4.808343] [drm] EDID 0x10: 0xa, 0x18, 0x1, 0x3
[    4.826519] [drm] EDID 0x14: 0x80, 0x35, 0x1e, 0x78
[    4.831515] [drm] EDID 0x18: 0xea, 0x9d, 0xe5, 0xa6
[    4.836522] [drm] EDID 0x1c: 0x54, 0x54, 0x9f, 0x26
[    4.841538] [drm] EDID 0x20: 0xd, 0x50, 0x54, 0xb7
[    4.846454] [drm] EDID 0x24: 0xef, 0x0, 0x71, 0x4f
[    4.851367] [drm] EDID 0x28: 0x81, 0x80, 0x81, 0x40
[    4.856374] [drm] EDID 0x2c: 0x81, 0xc0, 0x81, 0x0
[    4.861298] [drm] EDID 0x30: 0x95, 0x0, 0xb3, 0x0
[    4.866130] [drm] EDID 0x34: 0x1, 0x1, 0x2, 0x3a
[    4.870903] [drm] EDID 0x38: 0x80, 0x18, 0x71, 0x38
[    4.875915] [drm] EDID 0x3c: 0x2d, 0x40, 0x58, 0x2c
[    4.880931] [drm] EDID 0x40: 0x45, 0x0, 0x13, 0x2b
[    4.885844] [drm] EDID 0x44: 0x21, 0x0, 0x0, 0x1e
[    4.890667] [drm] EDID 0x48: 0x0, 0x0, 0x0, 0xfd
[    4.895427] [drm] EDID 0x4c: 0x0, 0x32, 0x4c, 0x1e
[    4.900339] [drm] EDID 0x50: 0x53, 0x11, 0x0, 0xa
[    4.905161] [drm] EDID 0x54: 0x20, 0x20, 0x20, 0x20
[    4.910166] [drm] EDID 0x58: 0x20, 0x20, 0x0, 0x0
[    4.914988] [drm] EDID 0x5c: 0x0, 0xfc, 0x0, 0x56
[    4.919819] [drm] EDID 0x60: 0x47, 0x32, 0x34, 0x38
[    4.924814] [drm] EDID 0x64: 0xa, 0x20, 0x20, 0x20
[    4.929727] [drm] EDID 0x68: 0x20, 0x20, 0x20, 0x20
[    4.934736] [drm] EDID 0x6c: 0x0, 0x0, 0x0, 0xff
[    4.939477] [drm] EDID 0x70: 0x0, 0x45, 0x33, 0x4c
[    4.944400] [drm] EDID 0x74: 0x4d, 0x51, 0x53, 0x30
[    4.949404] [drm] EDID 0x78: 0x32, 0x31, 0x30, 0x35
[    4.954421] [drm] EDID 0x7c: 0x33, 0xa, 0x1, 0xf5
[    4.963093] [drm] spacemit_crtc_atomic_enable(power on)
[    4.963123] [drm] hmclk=491520000
[    4.963162] [drm] dpu_init 
[    4.963167] [drm] dpu_init ciu offset 0x011c:0x0
[    4.963173] [drm] dpu_init ciu offset 0x0124:0xffff
[    4.963185] [drm] saturn_init_regs read OUTCTRL_TOP_X_REG value32[31] 0x100
[    4.963209] [drm] spacemit_hdmi_encoder_enable()
[    4.963415] [drm] hdmi_init() hdmi pll lock status 0x10003
[    4.963540] [drm] DPU 2 Start!
[    4.980259] Console: switching to colour frame buffer device 240x67
[    5.056289] spacemit-drm-drv c0440000.display-subsystem-hdmi: [drm] fb0: spacemitdrmfb frame buffer device
[    5.066573] ALSA device list:
[    5.069628]   #0: snd-hdmi
[    5.072385]   #1: snd-es8326
[    5.076652] Freeing unused kernel image (initmem) memory: 2280K
[    5.082754] Run /init as init process
[    5.086488]   with arguments:
[    5.089512]     /init
[    5.091830]   with environment:
[    5.095023]     HOME=/
[    5.097408]     TERM=linux
Loading, please wait...
Starting systemd-udevd version 253.5-1ubuntu6
[    5.398427] usb 2-1.4: new high-speed USB device number 3 using xhci-hcd
[    5.612459] hub 2-1.4:1.0: USB hub found
[    5.616823] hub 2-1.4:1.0: 4 ports detected
[    5.702433] usb 2-1.5: new high-speed USB device number 4 using xhci-hcd
[    5.795152] k1x_emac cac80000.ethernet end0: renamed from eth0
[    5.831429] k1x_emac cac81000.ethernet end1: renamed from eth1
[    5.886674] usb 3-1.4: new SuperSpeed USB device number 3 using xhci-hcd
[    5.965561] hub 3-1.4:1.0: USB hub found
[    5.970901] hub 3-1.4:1.0: 4 ports detected
[    6.018468] usb 2-1.4.3: new low-speed USB device number 5 using xhci-hcd
Begin: Loading essential drivers ... done.
Begin: Running /scripts/init-premount ... done.
Begin: Mounting root file system ... Begin: Running /scripts/local-top ... done.
Begin: Running /scripts/local-premount ... done.
Begin: Will now check root file system ... fsck from util-linux 2.39.1
[/usr/sbin/fsck.ext4 (1) -- /dev/mmcblk0p6] fsck.ext4 -a -C0 /dev/mmcblk0p6 
rootfs: clean, 256952/31227904 files, 3931924/124901120 blocks
done.
resize2fs 1.47.0 (5-Feb-2023)
Please run 'e2fsck -f /dev/mmcblk0p6' first.

[    6.191343] input: PixArt Microsoft USB Optical Mouse as /devices/platform/soc/soc:usb3@0/c0a00000.dwc3/xhci-hcd.0.auto/usb2/2-1/2-1.4/2-1.4.3/2-1.4.3:1.0/0003:045E:00CB.0001/input/inpu2
[    6.211880] hid-generic 0003:045E:00CB.0001: input: USB HID v1.11 Mouse [PixArt Microsoft USB Optical Mouse] on usb-xhci-hcd.0.auto-1.4.3/input0
[    6.258645] EXT4-fs (mmcblk0p6): mounted filesystem with ordered data mode. Quota mode: none.
done.
Begin: Running /scripts/local-bottom ... done.
Begin: Running /scripts/init-bottom ... done.
[    6.330436] usb 2-1.4.4: new low-speed USB device number 6 using xhci-hcd
[    6.544331] input: Dell KB216 Wired Keyboard as /devices/platform/soc/soc:usb3@0/c0a00000.dwc3/xhci-hcd.0.auto/usb2/2-1/2-1.4/2-1.4.4/2-1.4.4:1.0/0003:413C:2113.0002/input/input3
[    6.595215] systemd[1]: System time before build time, advancing clock.
[    6.618896] hid-generic 0003:413C:2113.0002: input: USB HID v1.11 Keyboard [Dell KB216 Wired Keyboard] on usb-xhci-hcd.0.auto-1.4.4/input0
[    6.636823] input: Dell KB216 Wired Keyboard System Control as /devices/platform/soc/soc:usb3@0/c0a00000.dwc3/xhci-hcd.0.auto/usb2/2-1/2-1.4/2-1.4.4/2-1.4.4:1.1/0003:413C:2113.0003/inpu4
[    6.691273] systemd[1]: systemd 253.5-1ubuntu6bb1 running in system mode (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2)
[    6.714764] input: Dell KB216 Wired Keyboard Consumer Control as /devices/platform/soc/soc:usb3@0/c0a00000.dwc3/xhci-hcd.0.auto/usb2/2-1/2-1.4/2-1.4.4/2-1.4.4:1.1/0003:413C:2113.0003/in5
[    6.724414] systemd[1]: Detected architecture riscv64.
[    6.742013] hid-generic 0003:413C:2113.0003: input: USB HID v1.11 Device [Dell KB216 Wired Keyboard] on usb-xhci-hcd.0.auto-1.4.4/input1

Welcome to Bianbu 1.0!

[    6.781359] systemd[1]: Hostname set to <k1>.
[    7.311732] systemd[1]: Configuration file /lib/systemd/system/multimedia.service is marked executable. Please remove executable permission bits. Proceeding anyway.
[    7.346216] systemd[1]: Configuration file /lib/systemd/system/camera.service is marked executable. Please remove executable permission bits. Proceeding anyway.
[    7.372514] systemd[1]: Configuration file /lib/systemd/system/adbd.service is marked executable. Please remove executable permission bits. Proceeding anyway.
[    7.615085] systemd[1]: Queued start job for default target graphical.target.
[    7.651006] systemd[1]: Created slice system-modprobe.slice - Slice /system/modprobe.
[  OK  ] Created slice system-modpr…lice - Slice /system/modprobe.
[    7.680832] systemd[1]: Created slice system-serial\x2dgetty.slice - Slice /system/serial-getty.
[  OK  ] Created slice system-seria… - Slice /system/serial-getty.
[    7.712899] systemd[1]: Created slice system-systemd\x2dfsck.slice - Slice /system/systemd-fsck.
[  OK  ] Created slice system-syste… - Slice /system/systemd-fsck.
[    7.743951] systemd[1]: Created slice user.slice - User and Session Slice.
[  OK  ] Created slice user.slice - User and Session Slice.
[    7.771062] systemd[1]: Started systemd-ask-password-wall.path - Forward Password Requests to Wall Directory Watch.
[  OK  ] Started systemd-ask-passwo… Requests to Wall Directory Watch.
[    7.803131] systemd[1]: proc-sys-fs-binfmt_misc.automount - Arbitrary Executable File Formats File System Automount Point was skipped because of an unmet condition check (ConditionPathE.
[    7.827103] systemd[1]: Reached target integritysetup.target - Local Integrity Protected Volumes.
[  OK  ] Reached target integrityse…Local Integrity Protected Volumes.
[    7.854814] systemd[1]: Reached target nss-user-lookup.target - User and Group Name Lookups.
[  OK  ] Reached target nss-user-lo…[0m - User and Group Name Lookups.
[    7.882740] systemd[1]: Reached target slices.target - Slice Units.
[  OK  ] Reached target slices.target - Slice Units.
[    7.910649] systemd[1]: Reached target snapd.mounts-pre.target - Mounting snaps.
[  OK  ] Reached target snapd.mounts-pre.target - Mounting snaps.
[    7.938603] systemd[1]: Reached target snapd.mounts.target - Mounted snaps.
[  OK  ] Reached target snapd.mounts.target - Mounted snaps.
[    7.962654] systemd[1]: Reached target swap.target - Swaps.
[  OK  ] Reached target swap.target - Swaps.
[    7.986746] systemd[1]: Reached target veritysetup.target - Local Verity Protected Volumes.
[  OK  ] Reached target veritysetup… - Local Verity Protected Volumes.
[    8.060408] systemd[1]: Listening on rpcbind.socket - RPCbind Server Activation Socket.
[  OK  ] Listening on rpcbind.socke… RPCbind Server Activation Socket.
[    8.087454] systemd[1]: Listening on syslog.socket - Syslog Socket.
[  OK  ] Listening on syslog.socket - Syslog Socket.
[    8.111358] systemd[1]: Listening on systemd-fsckd.socket - fsck to fsckd communication Socket.
[  OK  ] Listening on systemd-fsckd…sck to fsckd communication Socket.
[    8.139016] systemd[1]: Listening on systemd-initctl.socket - initctl Compatibility Named Pipe.
[  OK  ] Listening on systemd-initc… initctl Compatibility Named Pipe.
[    8.170603] systemd[1]: Listening on systemd-journald-dev-log.socket - Journal Socket (/dev/log).
[  OK  ] Listening on systemd-journ…t - Journal Socket (/dev/log).
[    8.199558] systemd[1]: Listening on systemd-journald.socket - Journal Socket.
[  OK  ] Listening on systemd-journald.socket - Journal Socket.
[    8.226845] systemd[1]: systemd-oomd.socket - Userspace Out-Of-Memory (OOM) Killer Socket was skipped because of an unmet condition check (ConditionPathExists=/proc/pressure/memory).
[    8.248742] systemd[1]: Listening on systemd-udevd-control.socket - udev Control Socket.
[  OK  ] Listening on systemd-udevd….socket - udev Control Socket.
[    8.279231] systemd[1]: Listening on systemd-udevd-kernel.socket - udev Kernel Socket.
[  OK  ] Listening on systemd-udevd…l.socket - udev Kernel Socket.
[    8.346753] systemd[1]: Mounting dev-hugepages.mount - Huge Pages File System...
         Mounting dev-hugepages.mount - Huge Pages File System...
[    8.378763] systemd[1]: Mounting dev-mqueue.mount - POSIX Message Queue File System...
         Mounting dev-mqueue.mountPOSIX Message Queue File System...
[    8.410951] systemd[1]: Mounting sys-kernel-debug.mount - Kernel Debug File System...
         Mounting sys-kernel-debug.… - Kernel Debug File System...
[    8.442860] systemd[1]: Mounting sys-kernel-tracing.mount - Kernel Trace File System...
         Mounting sys-kernel-tracin… - Kernel Trace File System...
[    8.477889] systemd[1]: Starting systemd-journald.service - Journal Service...
         Starting systemd-journald.service - Journal Service...
[    8.503172] systemd[1]: auth-rpcgss-module.service - Kernel Module supporting RPCSEC_GSS was skipped because of an unmet condition check (ConditionPathExists=/etc/krb5.keytab).
[    8.530287] systemd[1]: Starting keyboard-setup.service - Set the console keyboard layout...
[    8.536938] systemd-journald[340]: Collecting audit messages is disabled.
         Starting keyboard-setup.se…Set the console keyboard layout...
[    8.570802] systemd[1]: kmod-static-nodes.service - Create List of Static Device Nodes was skipped because of an unmet condition check (ConditionFileNotEmpty=/lib/modules/6.1.15/modules.
[    8.619100] systemd[1]: Starting modprobe@configfs.service - Load Kernel Module configfs...
         Starting modprobe@configfs…m - Load Kernel Module configfs...
[    8.651698] systemd[1]: Starting modprobe@dm_mod.service - Load Kernel Module dm_mod...
         Starting modprobe@dm_mod.s…[0m - Load Kernel Module dm_mod...
[    8.683768] systemd[1]: Starting modprobe@drm.service - Load Kernel Module drm...
         Starting modprobe@drm.service - Load Kernel Module drm...
[    8.715922] systemd[1]: Starting modprobe@efi_pstore.service - Load Kernel Module efi_pstore...
         Starting modprobe@efi_psto…- Load Kernel Module efi_pstore...
[    8.748073] systemd[1]: Starting modprobe@fuse.service - Load Kernel Module fuse...
         Starting modprobe@fuse.ser…e - Load Kernel Module fuse...
[    8.779841] systemd[1]: Starting modprobe@loop.service - Load Kernel Module loop...
         Starting modprobe@loop.ser…e - Load Kernel Module loop...
[    8.807478] systemd[1]: systemd-fsck-root.service - File System Check on Root Device was skipped because of an unmet condition check (ConditionPathExists=!/run/initramfs/fsck-root).
[    8.867110] systemd[1]: Starting systemd-modules-load.service - Load Kernel Modules...
         Starting systemd-modules-l…rvice - Load Kernel Modules...
[    8.894701] systemd[1]: systemd-pcrmachine.service - TPM2 PCR Machine ID Measurement was skipped because of an unmet condition check (ConditionPathExists=/sys/firmware/efi/efivars/StubP.
[    8.926362] systemd[1]: Starting systemd-remount-fs.service - Remount Root and Kernel File Systems...
         Starting systemd-remount-f…nt Root and Kernel File Systems...
[    8.953883] EXT4-fs (mmcblk0p6): re-mounted. Quota mode: none.
[    8.965652] systemd[1]: Starting systemd-udev-trigger.service - Coldplug All udev Devices...
         Starting systemd-udev-trig…[0m - Coldplug All udev Devices...
[    9.003116] systemd[1]: Started systemd-journald.service - Journal Service.
[  OK  ] Started systemd-journald.service - Journal Service.
[  OK  ] Mounted dev-hugepages.mount - Huge Pages File System.
[  OK  ] Mounted dev-mqueue.mount- POSIX Message Queue File System.
[  OK  ] Mounted sys-kernel-debug.m…nt - Kernel Debug File System.
[  OK  ] Mounted sys-kernel-tracing…nt - Kernel Trace File System.
[  OK  ] Finished keyboard-setup.se…- Set the console keyboard layout.
[  OK  ] Finished modprobe@configfs…[0m - Load Kernel Module configfs.
[  OK  ] Finished modprobe@dm_mod.s…e - Load Kernel Module dm_mod.
[  OK  ] Finished modprobe@drm.service - Load Kernel Module drm.
[  OK  ] Finished modprobe@efi_psto…m - Load Kernel Module efi_pstore.
[  OK  ] Finished modprobe@fuse.service - Load Kernel Module fuse.
[  OK  ] Finished modprobe@loop.service - Load Kernel Module loop.
[  OK  ] Finished systemd-modules-l…service - Load Kernel Modules.
[  OK  ] Finished systemd-remount-f…ount Root and Kernel File Systems.
         Mounting sys-fs-fuse-conne… - FUSE Control File System...
         Mounting sys-kernel-config…ernel Configuration File System...
         Starting systemd-journal-f…h Journal to Persistent Storage...
[    9.374489] systemd-journald[340]: Received client request to flush runtime journal.
         Starting systemd-random-se… - Load/Save OS Random Seed...
[    9.406026] systemd-journald[340]: File /var/log/journal/4f1664e0f73d4db9bc961195ff2bd26d/system.journal corrupted or uncleanly shut down, renaming and replacing.
         Starting systemd-sysctl.se…ce - Apply Kernel Variables...
         Starting systemd-sysusers.…rvice - Create System Users...
[  OK  ] Mounted sys-fs-fuse-connec…nt - FUSE Control File System.
[  OK  ] Mounted sys-kernel-config.… Kernel Configuration File System.
[  OK  ] Finished systemd-sysctl.service - Apply Kernel Variables.
[  OK  ] Finished systemd-sysusers.service - Create System Users.
         Starting systemd-tmpfiles-…ate Static Device Nodes in /dev...
[  OK  ] Finished systemd-journal-f…ush Journal to Persistent Storage.
[  OK  ] Finished systemd-udev-trig…e - Coldplug All udev Devices.
[  OK  ] Finished systemd-tmpfiles-…reate Static Device Nodes in /dev.
[  OK  ] Reached target local-fs-pr…reparation for Local File Systems.
         Starting systemd-udevd.ser…ger for Device Events and Files...
[  OK  ] Started systemd-udevd.serv…nager for Device Events and Files.
[  OK  ] Started systemd-ask-passwo…quests to Console Directory Watch.
[  OK  ] Reached target cryptsetup.…get - Local Encrypted Volumes.
[  OK  ] Found device dev-ttyS0.device - /dev/ttyS0.
[  OK  ] Found device dev-disk-by\x… - INTEL SSDPEKNW512G8 bootfs.
[  OK  ] Created slice system-syste…- Slice /system/systemd-backlight.
[  OK  ] Reached target usb-gadget.…m - Hardware activated USB gadget.
[  OK  ] Listening on systemd-rfkil…l Switch Status /dev/rfkill Watch.
         Starting modprobe@dm_mod.s…[0m - Load Kernel Module dm_mod...
         Starting modprobe@efi_psto…- Load Kernel Module efi_pstore...
         Starting modprobe@loop.ser…e - Load Kernel Module loop...
         Starting systemd-backlight… of backlight:soc:lcd_backlight...
         Starting systemd-fsck@dev-…711-e5a7-4c64-9d52-f0939faa0373...
[  OK  ] Finished modprobe@dm_mod.s…e - Load Kernel Module dm_mod.
[  OK  ] Finished modprobe@efi_psto…m - Load Kernel Module efi_pstore.
[  OK  ] Finished modprobe@loop.service - Load Kernel Module loop.
[  OK  ] Finished systemd-backlight…ss of backlight:soc:lcd_backlight.
[  OK  ] Started systemd-fsckd.serv…tem Check Daemon to report status.
         Starting systemd-rfkill.se…Load/Save RF Kill Switch Status...
[  OK  ] Finished systemd-fsck@dev-…c5711-e5a7-4c64-9d52-f0939faa0373.
[  OK  ] Started systemd-rfkill.ser…- Load/Save RF Kill Switch Status.
         Mounting boot.mount - /boot...
[  OK  ] Mounted boot.mount - /boot.
[  OK  ] Reached target local-fs.target - Local File Systems.
         Starting console-setup.ser…m - Set console font and keymap...
         Starting plymouth-read-wri…mouth To Write Out Runtime Data...
         Starting systemd-tmpfiles-… Volatile Files and Directories...
[  OK  ] Finished systemd-random-se…ce - Load/Save OS Random Seed.
[  OK  ] Finished console-setup.ser…[0m - Set console font and keymap.
[  OK  ] Finished plymouth-read-wri…lymouth To Write Out Runtime Data.
[  OK  ] Finished systemd-tmpfiles-…te Volatile Files and Directories.
         Mounting run-rpc_pipefs.mount - RPC Pipe File System...
         Starting rpcbind.service - RPC bind portmap service...
         Starting systemd-resolved.…e - Network Name Resolution...
         Starting systemd-timesyncd… - Network Time Synchronization...
         Starting systemd-update-ut…rd System Boot/Shutdown in UTMP...
[  OK  ] Started rpcbind.service - RPC bind portmap service.
[  OK  ] Mounted run-rpc_pipefs.mount - RPC Pipe File System.
[  OK  ] Reached target rpc_pipefs.target.
[  OK  ] Reached target rpcbind.target - RPC Port Mapper.
[  OK  ] Reached target nfs-client.target - NFS client services.
[  OK  ] Reached target remote-fs-p…eparation for Remote File Systems.
[  OK  ] Reached target remote-fs.target - Remote File Systems.
[  OK  ] Finished systemd-update-ut…cord System Boot/Shutdown in UTMP.
[  OK  ] Started systemd-timesyncd.…0m - Network Time Synchronization.
[  OK  ] Reached target time-set.target - System Time Set.
[  OK  ] Started systemd-resolved.s…ice - Network Name Resolution.
[  OK  ] Reached target nss-lookup.…m - Host and Network Name Lookups.
[  OK  ] Reached target sysinit.target - System Initialization.
[  OK  ] Started cups.path - CUPS Scheduler.
[  OK  ] Started whoopsie.path …ation of the /var/crash directory.
[  OK  ] Started anacron.timer - Trigger anacron every hour.
[  OK  ] Started apt-daily.timer - Daily apt download activities.
[  OK  ] Started apt-daily-upgrade.… apt upgrade and clean activities.
[  OK  ] Started dpkg-db-backup.tim… Daily dpkg database backup timer.
[  OK  ] Started e2scrub_all.timeretadata Check for All Filesystems.
[  OK  ] Started fstrim.timer -…sed filesystem blocks once a week.
[  OK  ] Started fwupd-refresh.time… Refresh fwupd metadata regularly.
[  OK  ] Started logrotate.timer - Daily rotation of log files.
[  OK  ] Started man-db.timer - Daily man-db regeneration.
[  OK  ] Started motd-news.timer - Message of the Day.
[  OK  ] Started systemd-tmpfiles-c… Cleanup of Temporary Directories.
[  OK  ] Reached target paths.target - Path Units.
[  OK  ] Listening on avahi-daemon.…NS/DNS-SD Stack Activation Socket.
[  OK  ] Listening on cups.socket - CUPS Scheduler.
[  OK  ] Listening on dbus.socket- D-Bus System Message Bus Socket.
         Starting snapd.socket …et activation for snappy daemon...
[  OK  ] Listening on ssh.socketpenBSD Secure Shell server socket.
[  OK  ] Listening on uuidd.socketm - UUID daemon activation socket.
[  OK  ] Listening on snapd.socketcket activation for snappy daemon.
[  OK  ] Reached target sockets.target - Socket Units.
[  OK  ] Reached target basic.target - Basic System.
         Starting accounts-daemon.service - Accounts Service...
         Starting adbd.service - Load modules user load...
[  OK  ] Started anacron.service - Run anacron jobs.
         Starting apport.servicetomatic crash report generation...
         Starting avahi-daemon.serv…e - Avahi mDNS/DNS-SD Stack...
         Starting camera.service - camera service...
[  OK  ] Started cron.service -…kground program processing daemon.
         Starting dbus.service - D-Bus System Message Bus...
[  OK  ] Started dmesg.service …nitial kernel messages after boot.
         Starting e2scrub_reap.serv…e ext4 Metadata Check Snapshots...
[  OK  ] Started irqbalance.service - irqbalance daemon.
         Starting multimedia.service - multimedia service...
         Starting polkit.service - Authorization Manager...
         Starting power-profiles-da…ice - Power Profiles daemon...
         Starting rsyslog.service - System Logging Service...
         Starting schroot.service - Recover schroot sessions...
[  OK  ] Reached target getty-pre.target - Preparation for Logins.
         Starting snapd.service - Snap Daemon...
[  OK  ] Started spacemit-modules-u…vice - Load modules user load.
         Starting switcheroo-contro…witcheroo Control Proxy service...
         Starting systemd-logind.se…ice - User Login Management...
         Starting udisks2.service - Disk Manager...
[  OK  ] Started dbus.service - D-Bus System Message Bus.
[  OK  ] Finished multimedia.service - multimedia service.
[  OK  ] Finished camera.service - camera service.
[  OK  ] Started switcheroo-control… Switcheroo Control Proxy service.
[  OK  ] Started systemd-logind.service - User Login Management.
[  OK  ] Started rsyslog.service - System Logging Service.
[  OK  ] Started avahi-daemon.service - Avahi mDNS/DNS-SD Stack.
         Starting NetworkManager.service - Network Manager...
         Starting alsa-restore.serv…- Save/Restore Sound Card State...
[  OK  ] Started realtek-bt.service…ltek Uart Bluetooth power service.
         Starting wpa_supplicant.service - WPA supplicant...
[  OK  ] Finished schroot.service - Recover schroot sessions.
[  OK  ] Finished alsa-restore.serv…m - Save/Restore Sound Card State.
[  OK  ] Reached target sound.target - Sound Card.
[  OK  ] Started wpa_supplicant.service - WPA supplicant.
[  OK  ] Started polkit.service - Authorization Manager.
[  OK  ] Started accounts-daemon.service - Accounts Service.
[  OK  ] Started power-profiles-dae…rvice - Power Profiles daemon.
[  OK  ] Started adbd.service - Load modules user load.
         Starting ModemManager.service - Modem Manager...
         Starting systemd-hostnamed.service - Hostname Service...
[  OK  ] Finished e2scrub_reap.serv…ine ext4 Metadata Check Snapshots.
[  OK  ] Started snapd.service - Snap Daemon.
         Starting snapd.seeded.serv…ait until snapd is fully seeded...
         Starting systemd-timedated…rvice - Time & Date Service...
[  OK  ] Started ModemManager.service - Modem Manager.
[  OK  ] Started udisks2.service - Disk Manager.
[  OK  ] Started systemd-hostnamed.service - Hostname Service.
         Starting NetworkManager-di…nager Script Dispatcher Service...
[  OK  ] Started systemd-timedated.service - Time & Date Service.
[  OK  ] Started NetworkManager-dis…Manager Script Dispatcher Service.
[  OK  ] Finished snapd.seeded.serv… Wait until snapd is fully seeded.
[  OK  ] Finished apport.serviceautomatic crash report generation.
[  OK  ] Started NetworkManager.service - Network Manager.
[  OK  ] Reached target network.target - Network.
[  OK  ] Reached target network-online.target - Network is Online.
[  OK  ] Started update-notifier-do…at failed at package install time.
[  OK  ] Started update-notifier-mo…a new version of Ubuntu available.
[  OK  ] Reached target timers.target - Timer Units.
         Starting cups.service - CUPS Scheduler...
         Starting kerneloops.servic… submit kernel crash signatures...
         Starting openvpn.service - OpenVPN service...
         Starting rpc-statd-notify.…- Notify NFS peers of a restart...
         Starting systemd-user-sess…vice - Permit User Sessions...
[  OK  ] Started whoopsie.service - crash report submission.
[  OK  ] Finished openvpn.service - OpenVPN service.
[  OK  ] Started rpc-statd-notify.s…m - Notify NFS peers of a restart.
[  OK  ] Finished systemd-user-sess…ervice - Permit User Sessions.
         Starting colord.serviceall and Generate Color Profiles...
         Starting gdm.service - GNOME Display Manager...
         Starting plymouth-quit-wai… until boot process finishes up...
[  OK  ] Finished plymouth-quit-wai…ld until boot process finishes up.
[  OK  ] Started serial-getty@ttyS0…rvice - Serial Getty on ttyS0.
[  OK  ] Reached target getty.target - Login Prompts.
         Starting setvtrgb.service - Set console scheme...
[  OK  ] Started kerneloops.service…nd submit kernel crash signatures.
[  OK  ] Finished setvtrgb.service - Set console scheme.
[  OK  ] Created slice system-getty.slice - Slice /system/getty.
[  OK  ] Started colord.service…stall and Generate Color Profiles.
[  OK  ] Started gdm.service - GNOME Display Manager.
[  OK  ] Created slice user-120.slice - User Slice of UID 120.
         Starting user-runtime-dir@…Runtime Directory /run/user/120...
[   18.771476] Bluetooth: : Non-link packet received in non-active state
[   18.786943] Bluetooth: hci0: Out-of-order packet arrived (1 != 0)
         Starting bluetooth.service - Bluetooth service...
[  OK  ] Finished user-runtime-dir@…r Runtime Directory /run/user/120.
         Starting user@120.service - User Manager for UID 120...
[  OK  ] Started bluetooth.service - Bluetooth service.
[  OK  ] Reached target bluetooth.target - Bluetooth Support.
[  OK  ] Started cups.service - CUPS Scheduler.
[  OK  ] Started cups-browsed.servi…e CUPS printers available locally.
[  OK  ] Reached target multi-user.target - Multi-User System.
[  OK  ] Reached target graphical.target - Graphical Interface.
         Starting systemd-update-ut… Record Runlevel Change in UTMP...

Bianbu 1.0 k1 ttyS0k1 login: 
