#!/sbin/sh
# Written by Tkkg1994 for csc selection

mount /dev/block/platform/155a0000.ufs/by-name/SYSTEM /system
mount /dev/block/platform/155a0000.ufs/by-name/USERDATA /data
mount /dev/block/platform/155a0000.ufs/by-name/EFS /efs

sed -i -- "s/CSC=//g" /tmp/aroma/csc.prop
getprop ro.boot.bootloader >> /tmp/variant
NEW_CSC=`cat /tmp/aroma/csc.prop`
ACTUAL_CSC=`cat /efs/imei/mps_code.dat`

if grep -q G935 /tmp/variant; then
	sed -i -- "s/G930/G935/g" /system/CSCVersion.txt
	sed -i -- "s/G930/G935/g" /system/SW_Configuration.xml
	echo "Changed model to G935"
else if grep -q G930 /tmp/variant; then
	sed -i -- "s/G935/G930/g" /system/CSCVersion.txt
	sed -i -- "s/G935/G930/g" /system/SW_Configuration.xml
	echo "Changed model to G930"
else
	echo "Not a supported model!"
fi
fi

if [ -f "/tmp/aroma/csc.prop" ]; then
	echo "csc.prop found"
	if [ "$NEW_CSC" == "TMB" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "TMB csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "ATT" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "ATT csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "VZW" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "VZW csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "XAA" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "XAA csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "XAS" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "XAS csc detected, flashing ZTO as default"
	else
		sed -i -- "s/$ACTUAL_CSC/$NEW_CSC/g" /efs/imei/mps_code.dat
		echo "flashing selected CSC"
	fi
	fi
	fi
	fi
	fi
fi

exit 10

