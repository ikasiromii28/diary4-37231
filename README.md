# README

## usersテーブル

| Column             | Type       | Options                    |
| ------------------ | ---------- | -------------------------- |
| nickname           | string     | null: false                |
| email              | string     | null: false, UNIQUE: true  |
| encrypted_password | string     |null: false                 |
| birthday           | date       |null: false                 |

### Association
- has_many :diaries
- has_many :comments

## diariesテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| title           | string     | null: false                    |
| text            | text       | null: false                    |
| today's_mood    | integer    | null: false                    |
| today's_weather | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | references | null: false                    |
| user    | references | null: false, foreign_key: true |
| diary   | references | null: false, foreign_key: true |

### Association
- belongs_to :diary
- belongs_to :user
