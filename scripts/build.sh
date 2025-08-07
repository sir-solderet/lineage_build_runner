#!/bin/bash
set -e

source build/envsetup.sh
lunch ${LUNCH_COMBO:-lineage_gta9-bp3a-userdebug}

export TARGET_BUILD_RECOVERY_IMAGE=true
make bacon -j$(nproc --all)
