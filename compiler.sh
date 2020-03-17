#!/bin/bash

/*
 * Copyright 2020 Shashank Baghel under Apache-2.0 license
 */

echo -e "\e[1;32mCloning Toolchains\e[0m"
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9.git
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9.git

cd aarch64-linux-android-4.9
git checkout e54105c9f893a376232e0fc539c0e7c01c829b1e

cd ..
cd arm-linux-androideabi-4.9
git checkout b91992b549430ac1a8a684f4bfe8c95941901165

cd ..
echo -e "\e[1;32mDone!\e[0m"