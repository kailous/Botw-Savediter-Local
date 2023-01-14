#!/bin/bash
# 定义变量
# Cemu根目录 ｜ 存档文件根目录 ｜ 备份目录
CEMU_DIR="$HOME/Library/Application Support/Cemu"
SAVE_DIR="$CEMU_DIR/mlc01/usr/save"
BACKUP_DIR="$CEMU_DIR/mlc01/backup"

# 获取当前的时间
NOW=$(date +'%Y-%m-%d-%H-%M-%S')
# 定义归档的文件名称
FILE="SAVE.BACKUP.$NOW.tar.gz"

# 建立备份文件夹
mkdir -p "$BACKUP_DIR"
# 开始备份
cd "$SAVE_DIR"
tar -czf "$BACKUP_DIR/$FILE" "00050000"

# 开启修改器页面
open "$CEMU_DIR/mlc01/index.html"
