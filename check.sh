#!/bin/bash

echo "🔍 檢查 JumpServer 部署狀態..."

echo "📦 檢查容器狀態："
docker ps --format "table {{.Names}}	{{.Status}}	{{.Ports}}"

echo ""
echo "🌐 測試 Web 介面是否開啟（預設 port 80）："
curl -s -o /dev/null -w "%{http_code}\n" http://localhost || echo "❌ 無法連線到 http://localhost"
