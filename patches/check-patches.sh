#!/bin/bash
cd ../../../..
cd frameworks/av
git apply -v --check ../../device/moto/panelli/patches/0001-frameworks_av.patch
cd ../..
cd frameworks/base
git apply -v --check ../../device/moto/panelli/patches/0002-frameworks_base.patch
cd ../..
cd frameworks/native
git apply -v --check ../../device/moto/panelli/patches/0003-frameworks_native.patch
cd ../..
cd system/netd
git apply -v --check ../../device/moto/panelli/patches/0004-system_netd.patch
cd ../..
cd system/core
git apply -v --check ../../device/moto/panelli/patches/0005-system_core.patch
cd ../..
