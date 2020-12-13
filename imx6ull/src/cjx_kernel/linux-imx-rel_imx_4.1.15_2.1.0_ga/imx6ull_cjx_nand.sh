#!/bin/sh
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- distclean
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- imx_cjx_nand_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig
#	配置Linux内核关闭QSPI驱动，使能NAND驱动
#	Device Drivers   
#	-> Memory Technology Device (MTD) support (MTD [=y])    
#		->  Swap on MTD device support  		选中
#		->	  SPI-NOR device support  ----	取消选中
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- all -j16
