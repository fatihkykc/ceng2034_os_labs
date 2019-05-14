in the 40_custom file,

the first menu entry is a link to iso file of the ubuntu server version.
but the server version cannot be installed directly.
after selecting the ubuntu server option in the grub,
inside the language selection forms, use alt+f2 to access the shell.
then type;

```
mkdir /media/anything
mount /dev/sdXY /media/anything
mkdir /cdrom
mount -o loop,ro -t iso9660 /media/anything/path/to/your_iso.iso

```
then you can install the server version as you wish.


for the mbr_output_txt;

it is the output of the first 512 bytes of the disk.
obtained by,
``
sudo dd if=/dev/sda of=mbr.bin bs=512 count=1
``
then;
``
hd -n 512 mbr.bin > mbr_output.tx

``

