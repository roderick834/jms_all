# JumpServer Docker 一鍵部署說明（jms_all 企業級版）

本部署包包含完整的 JumpServer 一體化容器部署環境（含 MySQL、Redis），支援 Host 模式、資料持久化、自動初始化與除錯工具。

## 使用步驟

1. 解壓縮部署包：

    tar zxvf jumpserver_deploy.tgz && cd jumpserver_deploy

2. 執行初始化腳本：

    ./init.sh

3. 登入 JumpServer：

    預設網址：http://<你的主機 IP>
    帳號：admin / 密碼：admin（首次登入需修改）

4. 健康檢查與除錯：

    ./check.sh

## 重要注意事項

- 初次部署後請備份 `.env`, `jms_data/`, `mysql_data/`
- 若部署錯誤，請查閱 `docker logs jms_all`
