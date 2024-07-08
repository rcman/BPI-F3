EXT Linux


Trying to use extlinux to boot.
Sample
A basic Linux menu entry looks like this:
label squeeze
menu label Debian Squeeze on sda5, kernel 2.6.32-5-686
kernel /vmlinuz-2.6.32-5-686
append initrd=/initrd.img-2.6.32-5-686 root=UUID=98f012537-7a7c-2213-819e-a69ddf9abc2b ro quiet
