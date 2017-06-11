#!/sbin/sh
# Written by Tkkg1994 for csc selection

mount /dev/block/platform/155a0000.ufs/by-name/SYSTEM /system
mount /dev/block/platform/155a0000.ufs/by-name/USERDATA /data
mount /dev/block/platform/155a0000.ufs/by-name/EFS /efs

getprop ro.boot.bootloader >> /tmp/variant
ACTUAL_CSC=`cat /efs/imei/mps_code.dat`
SALES_CODE=`cat /system/csc/sales_code.dat`

if grep -q  'CSC=BTU\|CSC=CHT\|CSC=DDE\|CSC=DHR\|CSC=DPL\|CSC=ILO\|CSC=INS\|CSC=SER\|CSC=TTR\|CSC=THL\|CSC=UPO\|CSC=VD2\|CSC=VIA\|CSC=XAA\|CSC=XAC\|CSC=XEO\|CSC=XSG' /tmp/aroma/csc.prop; then
	echo "cscmulti.prop found"
	sed -i -- "s/CSC=//g" /tmp/aroma/cscmulti.prop
	NEW_CSC=`cat /tmp/aroma/cscmulti.prop`
else
	echo "csc.prop found"
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

if grep -q  'CSC=ATT\|CSC=TMB\|CSC=XAA' /tmp/aroma/csc.prop; then
	echo "US csc found, appling ZTO as default"
	sed -i -- "s/$ACTUAL_CSC/ZTO/g" /efs/imei/mps_code.dat
	sed -i -- "s/$SALES_CODE/$NEW_CSC/g" /system/csc/sales_code.dat
else
	sed -i -- "s/$ACTUAL_CSC/$NEW_CSC/g" /efs/imei/mps_code.dat
	sed -i -- "s/$SALES_CODE/$NEW_CSC/g" /system/csc/sales_code.dat
	echo "flashing selected CSC"
fi

exit 10
