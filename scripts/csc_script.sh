#!/sbin/sh
# Written by Tkkg1994 for csc selection

mount /dev/block/platform/155a0000.ufs/by-name/SYSTEM /system
mount /dev/block/platform/155a0000.ufs/by-name/USERDATA /data
mount /dev/block/platform/155a0000.ufs/by-name/EFS /efs

getprop ro.boot.bootloader >> /tmp/variant
ACTUAL_CSC=`cat /efs/imei/mps_code.dat`

if grep -q  'CSC=CTI\|CSC=DDE\|CSC=DHR\|CSC=ILO\|CSC=INS\|CSC=SER\|CSC=THL\|CSC=TPA\|CSC=VD2\|CSC=VIA\|CSC=XAA\|CSC=XAC\|CSC=XEF\|CSC=XEO\|CSC=XSG' /tmp/aroma/csc.prop; then
	echo "cscmulti.prop found"
	sed -i -- "s/CSC=//g" /tmp/aroma/cscmulti.prop
	NEW_CSC=`cat /tmp/aroma/cscmulti.prop`
else
	sed -i -- "s/CSC=//g" /tmp/aroma/csc.prop
	NEW_CSC=`cat /tmp/aroma/csc.prop`
fi

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

if grep -q  'CSC=CTI\|CSC=DDE\|CSC=DHR\|CSC=ILO\|CSC=INS\|CSC=SER\|CSC=THL\|CSC=TPA\|CSC=VD2\|CSC=VIA\|CSC=XAA\|CSC=XAC\|CSC=XEF\|CSC=XEO\|CSC=XSG' /tmp/aroma/csc.prop; then
	echo "apply multi-csc patch"
	if [ "$NEW_CSC" == "ACG" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "ACG csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "AIO" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "AIO csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "ATT" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "ATT csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "BST" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "BST csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "GCF" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "GCF csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "LRA" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "LRA csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "SPR" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "SPR csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "TFN" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "TFN csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "TMB" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "TMB csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "TMK" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "TMK csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "USC" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "USC csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "VMU" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "VMU csc detected, flashing ZTO as default"
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
	fi
	fi
	fi
	fi
	fi
	fi
	fi
	fi
	fi
else
	echo "apply single csc patch"
	if [ "$NEW_CSC" == "ATT" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "ATT csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "TMB" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "TMB csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "TMK" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "TMK csc detected, flashing ZTO as default"
	else if [ "$NEW_CSC" == "VZW" ]; then
		sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
		echo "VZW csc detected, flashing ZTO as default"
	else
		sed -i -- "s/$ACTUAL_CSC/$NEW_CSC/g" /efs/imei/mps_code.dat
		echo "flashing selected CSC"
	fi
	fi
	fi
	fi
fi

exit 10

