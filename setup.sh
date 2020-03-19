#!/bin/bash

/*
 * Copyright 2020 Shashank Baghel under Apache-2.0 license
 */

echo -e "\e[1;32mDownloading and Installing Packages..\e[0m"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install bc ccache gcc automake lzop bison gperf build-essential zip curl zlib1g-dev g++-multilib python-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 sudo libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng libssl-dev -y

echo -e "\e[1;32m Installation Done!\e[0m";
echo " "