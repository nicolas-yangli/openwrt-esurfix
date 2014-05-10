#!/bin/sh

wget http://downloads.openwrt.org/attitude_adjustment/12.09/ramips/rt305x/config.ramips_rt305x -O .config \
    && echo 'CONFIG_PACKAGE_chap-proxy=y' >> .config \
    && make defconfig && make download && make
