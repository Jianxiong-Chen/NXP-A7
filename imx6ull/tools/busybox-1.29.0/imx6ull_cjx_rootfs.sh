#!/bin/sh
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- distclean
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make defconfig
#Location: 
# -> Settings 
#	-> Build static binary (no shared libs)   no
#Location: 
#-> Settings 
#-> vi-style line editing commands                yes
#Location: 
#-> Linux Module Utilities
#-> Simplified modutils                              no
#Location: 
# -> Settings
# -> Support Unicode //选中
#-> Check $LC_ALL, $LC_CTYPE and $LANG environment variables //选中
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- all -j16
make install CONFIG_PREFIX=./rootfs
