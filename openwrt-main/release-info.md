## OpenWrt-Main

### General Info

- Based of OpenWrt main branch

### Configuration

- OpenWRT Vanilla / Kernel 6.1
- ImmortalWRT patches for Rockchip target NanoPi R5S (rk3568) using master branch
- NanoPi R5S : r8125 Realtek driver
- Console access on HDMI + USB keyboard

### Applications

- A useful set of applications from official OpenWrt package feed
- Mini build without UI
- Full build with LuCI, docker and extra packages
- firewall4 based (nftables) + iptables compatibility packages for now, might change later.
- pbr latest version from https://github.com/stangri/source.openwrt.melmac.net

### Changelog

- [2023-11-17] Use OpenWrt Main Branch with ImmortalWrt master branch packages
- [2023-11-15] OpenWrt 23.05.2
- [2023-10-13] Freeze to 23.05.0
- [2023-10-03] Freeze to 23.05.0-rc4
- [2023-06-28] Freeze to 23.05.0-rc2 / Update packages
- [2023-06-21] Update patches
- [2023-04-25] Update patches and enable hdmi console
- [2023-04-16] Re-add some disabled features and packages
- [2023-04-10] Initial build
