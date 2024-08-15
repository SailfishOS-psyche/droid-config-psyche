#!/bin/bash

# This should prevent `echo 1 > /dev/ipa` to crash the kernel
echo -n "/vendor/firmware" > /sys/module/firmware_class/parameters/path

echo -1000 > /proc/self/oom_score_adj
