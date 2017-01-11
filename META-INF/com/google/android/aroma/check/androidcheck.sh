#!/sbin/sh
# Written by Tkkg1994

mount /dev/block/platform/155a0000.ufs/by-name/SYSTEM /system

cp /system/build.prop /tmp/version

if grep -q "ro.build.version.release=6.0.1" /tmp/version; then
	echo "Android 6.0.1 detected"
else if grep -q "ro.build.version.release=7.0" /tmp/version; then
	echo "Android 7.0 detected"
	sed -i -- "s/MM/N/g" /tmp/aroma/android.prop
else
	echo "Android version could not be found"
	sed -i -- "s/MM/nothing/g" /tmp/aroma/android.prop
fi
fi

exit 10

