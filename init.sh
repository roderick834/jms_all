#!/bin/bash
set -e

echo " 建立資料夾結構..."
mkdir -p mysql_data redis_data jms_data logs

echo " .env 已建立完成"
echo " 啟動 JumpServer + MySQL + Redis 容器..."
docker compose up -d


echo " 等待 JumpServer Django 環境準備完成..."
timeout=120
elapsed=0
until docker exec jms_all bash -c 'cd /opt/jumpserver && ./jms --help >/dev/null 2>&1'; do
    sleep 3
    elapsed=$((elapsed + 3))
    echo "   等待中：$elapsed 秒..."
    if [ $elapsed -ge $timeout ]; then
        echo " 等待 Django 環境超時，請檢查 docker logs jms_all"
        exit 1
    fi
done


echo " 完成！請開啟 http://<主機IP> 開始使用 JumpServer"
