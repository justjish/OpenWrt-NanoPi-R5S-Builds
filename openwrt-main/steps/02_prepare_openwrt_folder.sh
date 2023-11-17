#!/bin/bash
ROOTDIR=$(pwd)
echo $ROOTDIR
if [ ! -e "$ROOTDIR/build" ]; then
    echo "Please run from root / no build dir"
    exit 1
fi

cd "$ROOTDIR/build"

cp -R openwrt-fresh-main openwrt
cp -R immortalwrt-fresh-main immortalwrt
# no frozen revision for openwrt
cd openwrt
echo "Current OpenWRT commit"
git log -1
git describe

# no frozen revision for immortalwrt
cd ../immortalwrt
echo "Current ImmortalWRT commit"
git log -1
git describe

# hop back to openwrt folder
cd ../openwrt
# install feeds
# cd openwrt
# ./scripts/feeds update -a && ./scripts/feeds install -a
