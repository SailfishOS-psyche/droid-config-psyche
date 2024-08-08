#!/bin/bash

# Custom Partitions mounted
modem_part=/data/.stowaways/firmware/modem.img
dsp_part=/data/.stowaways/firmware/dsp.img
bluetooth_part=/data/.stowaways/firmware/bluetooth.img

mount -v -o loop,ro,shortname=lower,uid=1000,gid=1000,dmask=007,fmask=007 -t vfat $modem_part  /vendor/firmware_mnt
mount -v -o loop,ro,nosuid,nodev,barrier=1 -t ext4 $dsp_part /vendor/dsp
mount -v -o loop,ro,shortname=lower,uid=1002,gid=3002,dmask=227,fmask=337 -t vfat $bluetooth_part /vendor/bt_firmware

echo -1000 > /proc/self/oom_score_adj
