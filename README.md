Windows環境でBunBackup実行後、Slackに通知するスクリプト

# How To User
## 1. Curlの入手
Windowsは標準機能でCurlが用意されていないので、下記のサイトからダウンロードする。
https://curl.haxx.se/download.html
「Win64 - Generic」を選択し、環境に合わせて64bit, 32bitどちらかを選択

## 2. 環境変数の設定
### Curlのパスを設定
システム環境変数の「Path」にCurl実行ファイルのディレクトリを追記する。

| 項目名 | 値の例 |
----|---- 
| Path | C:\Users\xblood\curl-7.46.0-win64\bin |

### Web Hook URLの設定
ユーザー環境変数（※システム環境変数でもいい）にWeb Hook URLを設定する。

| 項目名 | 値の例 |
----|---- 
| BB_SLACK_WEBHOOKURL | https://hooks.slack.com/services/XXXXXXXXX/XXXXXXXXX/xxxxxxxxxxxxxxxxxxxxxxxx |

## 3. タスクスケジューラの設定
Windowsのタスクスケジューラで本スクリプトを自動起動させる。
