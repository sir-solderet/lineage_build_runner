#!/bin/bash
set -e

source build/envsetup.sh
lunch lineage_gta9-userdebug
make bacon -j$(nproc --all)
