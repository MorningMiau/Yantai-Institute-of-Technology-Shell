#!/bin/bash

while true
do
    clear
    echo "烟台理工学院 Ubuntu/Debian 一键脚本"
    echo "---------------------------------------------------------------"
    echo "1、一键安装 Acme 证书认证"
    echo "2、安装&升级X-UI面板"
    echo "3、安装科技Lion一键脚本"
    echo "0、退出脚本"
    echo "---------------------------------------------------------------"
    read -p "请输入数字：" num

    case $num in
        1)
            sudo apt update
            sudo apt install curl
            apt-get install cron
            curl https://get.acme.sh | sh
            ;;
        2)
            bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
            ;;
        3)
            curl -sS -O https://raw.githubusercontent.com/kejilion/sh/main/kejilion.sh && chmod +x kejilion.sh && ./kejilion.sh
            ;;
        0)
            exit 0
            ;;
        *)
            echo "请输入正确的数字！"
            sleep 2
            ;;
    esac
done
