# アプリケーション名
## pfcバランス

# アプリケーションの概要
# herokuURL

# Basic認証のPASS
# 利用方法
# 目指した課題解決
# 要件の洗い出し
# 実装機能の説明
# 実装予定の機能
# データベース設計
# ローカルでの動作方法について




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