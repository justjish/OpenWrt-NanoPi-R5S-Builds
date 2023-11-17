#!/bin/bash
ROOTDIR=$(pwd)
echo $ROOTDIR
if [ ! -e "$ROOTDIR/LICENSE" ]; then
    echo "Please run from root"
    exit 1
fi

cd $ROOTDIR
mkdir build
cd build

OPENWRT_FOLDER=openwrt-fresh-main
IMMORTALWRT_FOLDER=$ROOTDIR/immortalwrt-fresh-main # Alias master for easy integration
git clone -b master --single-branch https://github.com/justjish/openwrt.git $OPENWRT_FOLDER
git clone -b master --single-branch https://github.com/immortalwrt/immortalwrt.git $IMMORTALWRT_FOLDER

cd $OPENWRT_FOLDER
echo "Current OpenWRT commit"
git log -1

cd ../$IMMORTALWRT_FOLDER
echo "Current ImmortalWRT commit"
git log -1
