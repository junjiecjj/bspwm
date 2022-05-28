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
  zenity --info --width=200 --height=100 --text "Switched to first_child mode!"
  exit 0
elif [ "$1" == "longest_side" ]
then
  bspc config automatic_scheme longest_side
  zenity --info --width=200 --height=100 --text "Switched to longest_side mode!"
  exit 0
elif [ "$1" == "spiral" ]
then
  bspc config automatic_scheme spiral
  zenity --info --width=200 --height=100 --text "Switched to spiral mode!"
  exit 0
else
  zenity --info --width=200 --height=100 --text "Invalid mode!"
  exit 1
fi
