#!/system/bin/sh
#Removedor do AtomBoost


sys=$(find /dev/block/platform -name system)

mount -o rw,remount $sys

#Backup da build.prop

cp /system/build.prop.bak /system/build.prop;

mount -o remount,ro $sys