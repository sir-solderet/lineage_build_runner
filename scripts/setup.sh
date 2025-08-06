#!/bin/bash
set -e

# Init LineageOS 22.2 repo
repo init -u https://github.com/LineageOS/android.git -b lineage-22.2
repo sync -c --no-tags --no-clone-bundle -j$(nproc --all)

# Clone your device/vendor/kernel trees
git clone https://github.com/sir-solderet/android_device_samsung_gta9 device/samsung/gta9
git clone https://github.com/sir-solderet/vendor_samsung_gta9 vendor/samsung/gta9
git clone https://github.com/sir-solderet/android_kernel_samsung_gta9 kernel/samsung/gta9
