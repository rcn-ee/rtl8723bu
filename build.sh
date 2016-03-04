#!/bin/bash

ARCH=$(uname -m)

x86_dir="/opt/github/bb.org/ti-4.1/normal"
x86_compiler="gcc-linaro-4.9-2015.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-"

if [ "x${ARCH}" = "xarmv7l" ] ; then
	make_options="CROSS_COMPILE= KSRC=/build/buildd/linux-src"
else
	make_options="CROSS_COMPILE=${HOME}/dl/gcc/${x86_compiler} KSRC=${x86_dir}/KERNEL"
fi

make ARCH=arm ${make_options} all
#
