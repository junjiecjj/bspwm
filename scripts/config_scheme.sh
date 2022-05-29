#! /usr/bin/env bash
#########################################################################
# File Name: config_scheme.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年05月28日 星期六 15时20分46秒

# 此程序的功能是：
#########################################################################


if [ "$1" == "first_child" ]
then
    bspc config automatic_scheme first_child
    exec notify-send "Switched to first_child mode!"
    exit 0
elif [ "$1" == "second_child" ]
then
    bspc config automatic_scheme second_child
    exec notify-send "Switched to second_child mode!"
    exit 0
elif [ "$1" == "longest_side" ]
then
    bspc config automatic_scheme longest_side
    exec notify-send "Switched to longest_side mode!"
    exit 0
elif [ "$1" == "spiral" ]
then
    bspc config automatic_scheme spiral
    exec notify-send "Switched to spiral mode!"
    exit 0
else
    exec notify-send "Invalid mode!"
    exit 1
fi
