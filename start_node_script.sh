#!/bin/bash

# 定义日志文件位置
LOG_FILE="/opt/nodejs/money/log.log"
SCRIPT_PATH="/opt/nodejs/money/index.js"


# 启动 Node.js 脚本
echo "Starting Node.js script..." >> "$LOG_FILE"
node $SCRIPT_PATH >> "$LOG_FILE" 2>&1 &
echo $! > /tmp/myScript.pid
