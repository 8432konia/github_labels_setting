# githubにラベルをコマンドから貼る方法

## 経緯
同じラベルを何回も貼ることが手間だったのでスクリプト化

## 行うこと
- jq commandのインストール
- [Personal access tokens](https://github.com/settings/tokens)にて **Generate new token** をクリック
  - **repo** にチェックしトークンを発行 
- sercretsファイルを作成。ファイル構成については以下に示す
```
cd /path/to/github_labels_setting
vi sercrets

# owner: リポジトリの所有者名
# repo : リポジトリ名
# user : 開発者名
# token: Personal access tokens
# {owner} {repo} {user} {token}
# example>
8432konia github_labels_setting 8432konia token
```

## 実行コマンド
```
sh start.sh
```
