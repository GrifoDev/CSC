#!/sbin/sh
# Written by Tkkg1994

mount /dev/block/platform/155a0000.ufs/by-name/SYSTEM /system
mount /dev/block/platform/155a0000.ufs/by-name/USERDATA /data
mount /dev/block/platform/155a0000.ufs/by-name/EFS /efs

sed -i -- 's/G930/G935/g' /system/CSCVersion.txt
sed -i -- 's/G930/G935/g' /system/SW_Configuration.xml


exit 10


