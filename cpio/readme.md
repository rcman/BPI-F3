**Working with Initrd Image**
<br>
<br>
So how this works, if you run the shell command by itself it will show how to run the command.  Whatever your initrd is called you need to rename it to initrd.gz in the same directory as the script. The directory initrd-tree should be empty if you're
doing this for the first time. 
<br>
<br>
Uncompress your initrd by running the script with -u. When you run this it will uncompress it to the initrd-tree directory.  Change in to that directory make your changes, once done re-compress it with -r.  That's it.  I'm sure it could be modified to accept whatever your initrd is called but I just never did it.
<br>
<br>

https://wiki.ubuntu.com/CustomizeLiveInitrd

<br>
<br>



Franco
