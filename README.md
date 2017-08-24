# android_device_walton_ef4x
Device Tree For Walton Primo EF4+

# Some use full bug fixes
-if you getting libmnuitwrp.so needed by someting error.
then cd to your device tree and open BoardConfig.mk then search for "RECOVERY_VARIANT" and add a # before that line.

-after compile if no display is showing on twrp 
then replace ramdisk/sbin/libmnuitwrp.so file from a working twrp. 
