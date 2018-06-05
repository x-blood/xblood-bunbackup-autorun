Windows環境でBunBackupを実行後、Slackに通知するスクリプト

# 結果メッセージの例
![結果メッセージの例](/images/example-slack-result.PNG "結果メッセージの例")

# How To Use
## 1. Curlの入手
Windowsは標準機能でCurlが用意されていないので、下記のサイトからダウンロードする。  
[download Curl](https://curl.haxx.se/download.html)  
「Win64 - Generic」を選択し、環境に合わせて64bit, 32bitどちらかを選択

## 2. 環境変数の設定
### Curlのパスを設定
システム環境変数の「Path」にCurl実行ファイルのディレクトリを追記する。

| 項目名 | 値の例 |
----|---- 
| Path | C:\Users\xblood\curl-7.46.0-win64\bin |

### Slackで利用する環境変数の設定
ユーザー環境変数（※システム環境変数でもいい）を設定する。

| 項目名 | 値の例 |
----|---- 
| BB_SLACK_WEBHOOKURL | https://hooks.slack.com/services/XXXXXXXXX/XXXXXXXXX/xxxxxxxxxxxxxxxxxxxxxxxx |
| BB_SLACK_PREFIX | ```(*:office: Office*)``` |
| BB_SLACK_LOG_URL | ※ログファイルのURLを指定 |

## 3. MicroSoft Software Shadow Copy Providerを有効にする
標準では停止していることが多いため、自動起動するよう設定する。  
Shadow Copy Providerはファイルの作成日付や更新日付を保持してコピーする時に使用する。  
オプションは"/CREATIONTIMECOPY"となる。  
当該オプションを利用しないのなら、本設定はスキップできる。  

1. Windowsのサービスを起動する。
1. 「MicroSoft Software Shadow Copy Provider」をダブルクリックする
1. 「スタートアップの種類」を「自動」に変更し「OK」ボタンを押下
1. 右クリック -> 開始を選択し起動する(※次回以降は勝手に立ち上がる）

## 4. タスクスケジューラの設定
Windowsのタスクスケジューラで本スクリプトを自動起動させる。
### 設定のコツ
- "/CREATIONTIMECOPY"オプションはシステム管理者権限が必要であるため、「最上位の特権で実行する」オプションを有効にしておくこと
- 「ユーザーがログオンしているときのみ実行する」を推奨
