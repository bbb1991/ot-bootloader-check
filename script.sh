#!/bin/bash

# Get current bootloader
sudo dd if=/dev/sda1 of=/tmp/bootloader-current.img count=511 2>&1 status=none

# Compare byte-by-byte
cmp --silent ./bootloader-orig.img /tmp/bootloader-current.img && \
    echo "Bootloader is not modified" || \
    echo "WARNING! Bootloader is modified!!!"
