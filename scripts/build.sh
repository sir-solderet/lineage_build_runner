#!/bin/bash
set -e

source build/envsetup.sh
lineage_gta9_bp3a-userdebug
make bacon -j$(nproc --all)
