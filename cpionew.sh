#!/bin/bash

case $1 in

-u|--unpack)
if [ ! -f initrd.gz ];then
echo "initrd.gz not found. Change to directory containing initrd.gz then run this command again"
exit
fi

echo "Making initrd-tree directory..."
mkdir initrd-tree
cd initrd-tree/
echo "Unpacking initrd.gz..."
zcat ../initrd.gz | cpio -i -d 
echo "Done. Now you can edit files inside initrd-tree dir, then run \"initrd-edit -r\" to make new initrd.gz"
;;

-r|--repack)
if [ ! -d initrd-tree ];then
echo "initrd-tree not found. Change to directory containing initrd-tree then run this command again"
exit
fi

if [ -f initrd.gz ];then
	echo "Backup old initrd.gz? (y/n)"
	read bkpchoice
		if [ "$bkpchoice" = "y" ];then
			echo "Making backup of old initrd,gz..."
			mv initrd.gz initrd.gz.bkp
		fi
fi

cd initrd-tree
echo "Repacking initrd.gz..."
find . | cpio -o -H newc | gzip -9 > ../initrd.gz 
cd ..
echo "Remove initrd-tree? (y/n)"
read choice
[ "$choice" = "y" ] && rm -rf initrd-tree
echo "Done."
;;

*)
echo "Script to unpack or repack initrd.gz 
You need to run it from directory containing initrd.gz or initrd-tree 
Usage: 
inird-edit [command] 
Commands: 
-u | --unpack :Unpacks initrd.gz 
-r | --repack :Repacks initrd.gz"
;;

esac
