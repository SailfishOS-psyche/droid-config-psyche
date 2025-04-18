#!/bin/bash

# This should prevent `echo 1 > /dev/ipa` to crash the kernel
echo -n "/vendor/firmware" > /sys/module/firmware_class/parameters/path

mount --bind /usr/libexec/droid-hybris/system/lib64/hw/audio.hidl_compat.default.so /vendor/lib64/hw/audio.primary.kona.so

echo -1000 > /proc/self/oom_score_adj
