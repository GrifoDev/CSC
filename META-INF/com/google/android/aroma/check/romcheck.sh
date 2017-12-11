#!/sbin/sh
# Written by Tkkg1994

mount /dev/block/platform/155a0000.ufs/by-name/SYSTEM /system


if grep -q "ro.product.first_api_level=23" /tmp/version; then
	echo "S7 Rom detected"
else if grep -q "ro.product.first_api_level=24" /tmp/version; then
	echo "S8 Port detected"
	sed -i -- "s/s7/s8/g" /tmp/aroma/romcheck.prop
else if grep -q "ro.product.first_api_level=25" /tmp/version; then
	echo "N8 Port detected"
	sed -i -- "s/s7/n8/g" /tmp/aroma/romcheck.prop
else
	echo "Rom could not be detected successfully"
	sed -i -- "s/s7/nothing/g" /tmp/aroma/romcheck.prop
fi
fi
fi

exit 10

