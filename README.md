# アプリケーション名
### pfcバランス

# アプリケーションの概要
ユーザーの新規登録・ログイン及びログアウトになります。
今後追加機能はあります。

# herokuURL
### https://pfcnew.herokuapp.com/ 

# Basic認証のPASS
### ID：kintore　 PASS：114

# 利用方法
食事に含まれる三大栄養素（タンパク質、糖質、資質）とカロリーを計算したい時にしようします。
（現在この機能はまだ実装できていません。）

# 目指した課題解決
健康管理の観点から、栄養価の計算をし可視化することを実行すること。
プロのスポーツ選手やボディービルダーは日々の食事を常に計算して食事をしています。
一方、一般人にはその計算が大変です。その計算の補助を行うこと。

# 要件の洗い出し
・ユーザー管理を行うこと
・体重と身長、年齢から平均の必要栄養量を表示する
・一般的な食事を選択すると自動で栄養素が表示され、複数なら合計を出す。
・もし項目に食品の追加をしたいときは追加依頼を送ることができる。
・追加した食品をログとして表示する。

# 実装機能の説明
・現在可能な実装機能はユーザー管理と新規登録・ログイン・ログアウトのみとなっています。

# 実装予定の機能
・栄養素の自動計算機能
・追加した食品のログ表示フォーム
・追加してほしい欲品のログフォーム
・体重・身長・年齢での平均栄養値の表示
・ユーザー編集機能

# データベース設計
## 現在作成できているER図（今後変更、追加する可能性あり）
<img width="761" alt="71e7107dc9fc8020516dac977a2527b8" src="https://user-images.githubusercontent.com/83645227/123307489-81b91f80-d55d-11eb-8d64-44940aa5605d.png">

# テーブル設計

## usersテーブル

| Colum    | Type    | Options                   |
| -------- | ------- | ------------------------- |
| n_name   | string  | null: false               |
| email    | string  | null: false, unique: true |
| password | string  | null: false               |
| height   | integer | null: false               |
| weight   | integer | null: false               |
| age      | integer | null: false               |

### Association

- has_many :wants
- has_many :total

## wantsテーブル

| Colum  | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| object | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## totalsテーブル

| Colum   | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| protein | string     |                                |
| fat     | string     |                                |
| carb    | string     |                                |
| calorie | string     |                                |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user

# ローカルでの動作方法について

