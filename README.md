# JumpServer Docker 一鍵部署說明

本部署包包含完整的 JumpServer 一體化容器部署環境（含 MySQL、Redis），支援 Host 模式、資料持久化、自動初始化與除錯工具。

## 使用步驟


1. 先修改 .env 檔案 

2. 執行 init.sh 建立 jumpserver 

3. 登入 JumpServer：

    預設網址：http://<你的主機 IP>
    帳號：admin / 密碼：admin（首次登入需修改）

4. 健康檢查與除錯：

    ./check.sh

## 重要注意事項

- 初次部署後請備份 `.env`, `jms_data/`, `mysql_data/`
- 若部署錯誤，請查閱 `docker logs jms_all`
- nginx 內 volume/nginx/etc/conf.d/default.conf  server_name 與 proxy_set_header Host  需要自行修改為自身 Hostname 。
- 自身憑證請替換至 volume/nginx/etc/conf.d/ssl.conf

---

JumpServer Docker One-Click Deployment Guide

This deployment package includes a complete integrated containerized JumpServer environment (with MySQL and Redis). It supports Host mode, data persistence, automatic initialization, and debugging tools.

Steps to Use

First, modify the .env file.
Run init.sh to create JumpServer.
Log in to JumpServer:
Default URL: http://<your host IP>
Username: admin / Password: admin (You will be prompted to change the password upon first login)
Health Check and Debugging

Run ./check.sh
Important Notes

After the initial deployment, please back up the .env, jms_data/, and mysql_data/ directories.
If the deployment fails, check the logs using docker logs jms_all.
In the Nginx configuration file located at volume/nginx/etc/conf.d/default.conf, you need to manually update the server_name and proxy_set_header Host to match your hostname.
Replace the default certificate with your own in volume/nginx/etc/conf.d/ssl.conf.
