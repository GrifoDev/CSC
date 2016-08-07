#!/sbin/sh
# Written by Tkkg1994

mount /dev/block/platform/155a0000.ufs/by-name/SYSTEM /system
mount /dev/block/platform/155a0000.ufs/by-name/USERDATA /data
mount /dev/block/platform/155a0000.ufs/by-name/EFS /efs

if [ ! -d /data/media/0/EFSBackup ];then
  mkdir /data/media/0/EFSBackup
  chmod 777 /data/media/0/EFSBackup
fi

dd if=/dev/block/sda3 of=/data/media/0/EFSBackup/efs.img bs=4096
cp /system/build.prop /data/media/0/EFSBackup/build.prop

unmount /system
unmount /data
unmount /efs

exit 10


