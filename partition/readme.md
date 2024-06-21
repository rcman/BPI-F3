
**Steps**
 
	- boot from a live cd.
	
	You'll need to boot from a live cd. Add partitions for them to disk 1, copy all the contents over, and then use sudo blkid to get the UUID of each partition. On disk 1's new /, edit the /etc/fstab to use the new UUIDs you just looked up.
	
	Updating GRUB depends on whether it's GRUB1 or GRUB2. If GRUB1, you need to edit /boot/grub/device.map
	
	sudo mkdir /media/root
    sudo mount /dev/sda1 /media/root
    sudo mount /dev/sda2 /media/root/boot
    sudo mount /dev/sda3 /media/root/home
	
		Then bind mount /proc and /dev in the /media/root:
		
		sudo mount -B /proc /media/root/proc
		sudo mount -B /dev /media/root/dev
		sudo mount -B /sys /media/root/sys
		
		
		Now chroot into the drive so you can force GRUB to update itself according to the new layout:
		
		sudo chroot /media/root
		sudo update-grub
		
		This does not apply to EFI setups. You need to mount /media/root/boot/efi, among other things. – 

		I needed to to a sudo grub-install /dev/sda before the sudo update-grub – 

		**update-initramfs -u (initramfs contains the resume partition UUID)**		
		---------------------------------------------------------------------------
		
		sudo dd if=/dev/sdx1 of=/dev/sdy1 bs=64K conv=noerror,sync
		
		Where /dev/sdx1 is your source partition, and /dev/sdy1 is your destination one
		
		sudo mkdir /mnt/new
		sudo mount /dev/sdy1 /mnt/new
		
		ls -l /mnt/new
		
		blkid
		
		You’ll see all of the partitions with the corresponding UUID.
	     Now, if we want to change it we have to first generate a new one using:
		 
		uuidgen
		
		which will generate a brand new UUID for us, then let’s copy it result and execute command similar to:
		
		sudo tune2fs /dev/sdy1 -U cd6ecfb1-05e0-4dd7-89e7-8e78dad1fa0e
		
		where in place of /dev/sdy1 you should provide your target partition device identifier, and in place of -U flag value, you should paste the value generated from uuidgen command.

		Now the last thing to do, is to update our fstab file on new partition so that it’ll contain the proper UUID, to do this, let’s edit it with.
		
		sudo vim /etc/fstab
		# or nano or whatever editor of choice
		
		you’ll see something similar to the code below inside:
		
		# /etc/fstab: static file system information.
		#
		# Use ‘blkid’ to print the universally unique identifier for a
		# device; this may be used with UUID= as a more robust way to name devices
		# that works even if disks are added and removed. See fstab(5).
		#
		# <file system> <mount point> <type> <options> <dump> <pass>
		# / was on /dev/sdc1 during installation
		UUID=cd6ecfb1–05e0–4dd7–89e7–8e78dad1fa0e / ext4 errors=remount-ro 0 1
		# /home was on /dev/sdc2 during installation
		**UUID=667f98f4–9db1–415b-b326–65d16c528e29 /home ext4 defaults 0 2**
		/swapfile none swap sw 0 0
		UUID=7AA7–10F1 /boot/efi vfat defaults 0 1
		
		The bold part is important for us, so what we want to do, is to paste our new UUID replacing the current one specified for the / path.
		
		And that’s almost it
		The last part you have to do is to simply update the grub.

		There are a number of options here, for the brave ones you can edit the /boot/grub/grub.cfg

		Another option is to simply reinstall grub into our new drive with command:

		sudo grub-install /dev/sdx	
		
		Taken from: https://medium.com/@dominikgacek/how-to-move-linux-root-partition-to-another-drive-quickly-31e54fdc9c19
