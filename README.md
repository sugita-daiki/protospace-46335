# テーブル設計

## users テーブル

| Column             | Type   | Options                 |
| ------------------ | ------ | -----------             |
| email              | string | null: false unique: true  |
| encrypted_password | string | null: not               |
| name               | string | null: not               |
| profile            | text   | null: not               |
| occupation         | text   | null: not               |
| position           | text   | null: not               |

## prototypes テーブル

| Column     | Type      | Options                       |
| ------     | ------    | -----------                   |
| title      | string    | null: not                     |
| catch_copy | text      | null: not                     |
| concept    | text      | null: not                     |
| user       | reference | null: not                     |

## comments テーブル

| Column     | Type             | Options                        |
| ------     | ----------       | ------------------------------ |
| content    | text | null: not |null: false, foreign_key: true  |
| prototype  |references        | null:false, foreign_key: true. |
| user       | references       | null: false, foreign_key: true |



