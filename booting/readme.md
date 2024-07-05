**Links**

<br>
https://krinkinmu.github.io/2023/08/21/how-u-boot-loads-linux-kernel.html
<br>
<br>
https://serhack.me/articles/os-embedded-booting-phase-uboot/
<br>
<br>





**How u-boot works**
<br>
Bootscript
The bootscript is an script that is automatically executed when the boot loader starts, and before
the OS auto boot process.
The bootscript allows the user to execute a set of predefined U-Boot commands automatically
before proceeding with normal OS boot. This is especially useful for production environments and
targets which don’t have an available serial port for showing the U-Boot monitor.
6.1 Bootscript process
The bootscript works in the following way:
1. U-Boot checks the variable loadbootsc. If set to “no”, it continues normal execution.
2. If the variable loadbootsc is set to “yes” (factory default value) U-Boot tries to download
the bootscript file with the filename stored in variable bootscript from the TFTP server IP
address defined at variable serverip (by default 192.168.42.1).
The default value of the bootscript variable is <platformname>-bootscript.
3. If the bootscript file is successfully downloaded, it is executed.
4. If any of the commands in the bootscript fails, the rest of script is cancelled.
5. When the bootscript has been fully executed (or cancelled) U-Boot continues normal
execution.
6.2 Creating a bootscript
To create a bootscript file:
1. Create a plain text file with the sequence of U-Boot commands. Usually, it is recommended
that the last command sets the variable loadbootsc to “no”, to avoid the bootscript from
executing a second time.
For example, create a file called myscript.txt with the following contents:
setenv company digi
setenv bootdelay 1
printenv company
setenv loadbootsc no
saveenv
This script creates a new variable called company with value digi and sets the bootdelay
to one second. Finally it sets the variable loadbootsc to “no” so that U-Boot doesn’t try to
execute the bootscript in the future, and saves the changes.
2. Execute the mkimage tool (provided with U-Boot) with the file above as input file. Syntax is:
mkimage -T script -n "Bootscript" -C none -d <input_file> <output_file>
The name of the output file must be in the form <platformname>-bootscript, where
<platformname> must be replaced with your target’s platform name.
For example, to create the bootscript from the text file above and for a Connect ME 9210
platform, go to the U-Boot directory and execute:
$ tools/mkimage -T script -n “Bootscript” -C none -d myscript.txt
cme9210js-bootscript
