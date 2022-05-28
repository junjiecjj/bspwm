#! /usr/bin/env bash
#########################################################################
# File Name: autostart.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年05月27日 星期五 15时43分55秒

# 此程序的功能是：
#########################################################################



sh ~/.fehbg

arr=("sxhkd" "xfce4-power-manager" "copyq" "fcitx5" "dunst" "xdman" "qv2ray" "redshift-gtk" "mpd" "compton" "conky" "~/.config/polybar/launch.sh")

for value in ${arr[@]}
do
    isExist=`ps -ef | grep "$value" | grep -v grep | wc -l`
    if [ $isExist == 0 ]
    then
        exec "$value" &
    fi
done
