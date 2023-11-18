#!/bin/bash

# 检查是否已经安装了figlet
if ! command -v figlet &> /dev/null
then
    echo "figlet 未安装，正在自动安装..."
    sudo apt-get install figlet
fi

# 创建命令别名
alias yit='curl -sS -O https://raw.githubusercontent.com/MorningMiau/Yantai-Institute-of-Technology-Shell/main/yit.sh && chmod +x yit.sh && ./yit.sh'

# 将别名添加到shell配置文件中
echo "alias yit='curl -sS -O https://raw.githubusercontent.com/MorningMiau/Yantai-Institute-of-Technology-Shell/main/yit.sh && chmod +x yit.sh && ./yit.sh'" >> ~/.bashrc

while true
do
    clear
    echo "烟台理工学院 Ubuntu/Debian 一键脚本"
    echo "Version 0.2 Beta"
    figlet "YIT"
    echo "首次运行脚本后仅需输入 yit 即可再次启动脚本"
    echo "---------------------------------------------------------------"
    echo "1、一键安装 Acme 证书认证"
    echo "2、安装&升级X-UI面板"
    echo "3、安装科技Lion一键脚本"
    echo "---------------------------------------------------------------"
    echo "0、退出脚本"
    echo "---------------------------------------------------------------"
    read -p "请输入数字：" num

    case $num in
        1)
            sudo apt update
            read -p "Press enter to continue"
            sudo apt install curl
            read -p "Press enter to continue"
            apt-get install cron
            read -p "Press enter to continue"
            curl https://get.acme.sh | sh
            read -p "Press enter to continue"
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
