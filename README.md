# githubにラベルをコマンドから貼る方法

## 経緯
同じラベルを何回も貼ることが手間だったのでスクリプト化

## 行うこと
- jq commandのインストール
- Personal access tokensの取得(repoのつくものにチェック)

## 実行コマンド
```
# owner: リポジトリの所有者名
# repo : リポジトリ名
# user : 開発者名
# token: Personal access tokens

sh setup_labels.sh {owner} {repo} {user} {token}
```
