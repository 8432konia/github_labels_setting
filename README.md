# githubにラベルをコマンドから貼る方法

## 経緯
同じラベルを何回も貼ることが手間だったのでスクリプト化

## 行うこと
- jq commandのインストール
- Personal access tokensの取得(repoのつくものにチェック)
- secretファイルを作成。ファイル構成については以下に示す
```
# owner: リポジトリの所有者名
# repo : リポジトリ名
# user : 開発者名
# token: Personal access tokens
{owner} {repo} {user} {token}
```

## 実行コマンド
```
sh start.sh
```
