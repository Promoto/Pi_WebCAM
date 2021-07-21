##################################################
#		Ext4
##################################################

file st-image-userfs-openstlinux-weston-stm32mp1-Cyberpower_1Gb_Eth_Module.ext4

dumpe2fs st-image-userfs-openstlinux-weston-stm32mp1-Cyberpower_1Gb_Eth_Module.ext4

# mount .ext4
sudo mount -t ext4 st-image-userfs-openstlinux-weston-stm32mp1-Cyberpower_1Gb_Eth_Module.ext4 ./userfs
sudo umount ./userfs

# How to Defragment Linux Partitions
$ sudo e4defrag <location>
$ sudo e4defrag <device>

# Tuning EXT2/EXT3/EXT4 Filesystems
sudo tune2fs -l st-image-userfs-openstlinux-weston-stm32mp1-Cyberpower_1Gb_Eth_Module.ext4
sudo tune2fs -l st-image-bootfs-openstlinux-weston-stm32mp1-Cyberpower_1Gb_Eth_Module.ext4

[1]
https://www.tecmint.com/manage-ext2-ext3-and-ext4-health-in-linux/
https://unix.stackexchange.com/questions/43903/create-file-image-container

https://www.systutorials.com/docs/linux/man/8-mkfs.ext4/

##################################################
#		mount
##################################################

mount -o remount,rw /boot
mount -o remount,ro /boot

[1] mount & ln
https://unix.stackexchange.com/questions/128471/determine-what-device-a-directory-is-located-on
https://askubuntu.com/questions/876510/booting-into-read-only-file-system

##################################################
#		df
##################################################

df -h

# list current folder mount information
df -h /mnt

##################################################
#		fdisk (MBR)
##################################################

fdisk -l

[6] 替 Linux 新增硬碟（磁碟分割、格式化與掛載）
https://blog.gtwang.org/linux/linux-add-format-mount-harddisk/
https://dywang.csie.cyut.edu.tw/dywang/rhcsaNote/node59.html

##################################################
#		parted (GPT)
##################################################

parted -l

[1] Linux 的 Parted 指令教學：建立、變更與修復磁碟分割區
https://blog.gtwang.org/linux/parted-command-to-create-resize-rescue-linux-disk-partitions/

##################################################
#		fsck
##################################################

[2] fsck
https://blog.gtwang.org/linux/linux-fsck-examples/
https://www.suse.com/support/kb/doc/?id=000016305
https://dywang.csie.cyut.edu.tw/dywang/rhcsaNote/node59.html

##################################################
#		fstab
##################################################

[3] /etc/fstab
https://dywang.csie.cyut.edu.tw/dywang/rhcsaNote/node59.html
https://www.opencli.com/linux/fstab
http://linux.vbird.org/linux_basic/0230filesystem.php
https://dywang.csie.cyut.edu.tw/dywang/rhcsaNote/node59.html

##################################################
#		reference
##################################################

[4] STM32CubeProgrammer_flashlayout
https://wiki.st.com/stm32mpu/wiki/STM32CubeProgrammer_flashlayout


[1] 8 Tips to Solve Linux Hard Disk Problems: Like Disk Full Or Can’t Write to the Disk
https://www.cyberciti.biz/datacenter/linux-unix-bsd-osx-cannot-write-to-hard-disk/

##################################################
#		OpenSTLinux directory structure
##################################################

https://wiki.st.com/stm32mpu/wiki/OpenSTLinux_directory_structure
https://wiki.st.com/stm32mpu/wiki/File_Hierarchy_Standard_(FHS)
https://wiki.st.com/stm32mpu/wiki/STM32MP15_Flash_mapping#Flash_partitions

##################################################
#		initrd
##################################################

# element
/
/boot
/boot/uImage
/boot/uInitrd
/boot/extlinux/extlinux.conf

[1] Linux核心Ramdisk(initrd)機制
https://www.itread01.com/hkypfxl.html










