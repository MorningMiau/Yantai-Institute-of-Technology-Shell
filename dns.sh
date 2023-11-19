#!/bin/bash

while true
do
    clear
    echo "烟台理工学院 Ubuntu/Debian 一键脚本"
    echo "Version 0.4 Beta"
    figlet "YIT"
    echo "---------------------------------------------------------------"
    echo "DNS工具"
    echo "---------------------------------------------------------------"
    echo "1、查询本机DNS"
    echo "2、修改本机DNS"
    echo "---------------------------------------------------------------"
    echo "0、返回上一级菜单"
    echo "---------------------------------------------------------------"
    read -p "请输入数字：" num

    case $num in
        1)
            # 查询本机DNS
            cat /etc/resolv.conf
            read -p "按任意键继续……"
            ;;
        2)
            # 修改本机DNS
            echo "DNS 1："
            read dns1
            echo "DNS 2："
            read dns2
            echo "nameserver $dns1" | sudo tee /etc/resolv.conf > /dev/null
            echo "nameserver $dns2" | sudo tee -a /etc/resolv.conf > /dev/null
            ;;
        0)
            exit 0
            ;;
        *)
            echo "请输入正确选项"
            sleep 2
            ;;
    esac
done
