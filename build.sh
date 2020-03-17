#!/bin/bash

#
#Copyright 2020 Shashank Baghel under Apache-2.0 license
#

wd=$(pwd)
KERNEL_DIR=$wd/kernel
DATE=$(date +"%m-%d-%y")
BUILD_START=$(date +"%s")

export CROSS_COMPILE=/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

#Export ARCH <arm, arm64, x86, x86_64>
export ARCH=arm64
#Export SUBARCH <arm, arm64, x86, x86_64>
export SUBARCH=arm64

#Set kernal name
export LOCALVERSION=theradcolor
#Export Username
export KBUILD_BUILD_USER=theradcolor
#Export Machine name
export KBUILDar_BUILD_HOST=MANJARO

function check {
    if [ -f $KERNEL_DIR/out/arch/arm64/boot/Image.gz-dtb ]
       then
        zip
       else
        echo "Build failed"
    fi
}

function zip {
    cd $wd/AnyKernel3
    rm -f AnyKernel3/Image.gz*
    rm -f AnyKernel3/zImage*
    rm -f AnyKernel3/dtb*
    cp $KERNEL_DIR/out/arch/arm64/boot/Image.gz-dtb AnyKernel3/
    zip -r9 kernel.zip * -x .git README.md
    BUILD_END=$(date +"%s")
    DIFF=$(($BUILD_END - $BUILD_START))
    echo "Build Completed Succesfully"
    echo "Build took : $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) second(s)."
}

#Start building
cd $KERNEL_DIR
make clean && make mrproper O=out
make O=out	defconfig
make O=out -j$(nproc --all)
cd ..
check