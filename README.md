# テーブル設計

## usersテーブル

| Column                           | Type   | Options                       |
| -------------------------------  | ------ | ----------------------------- |
| nickname                         | string | null: false                   |
| first_name                       | string | null: false                   |
| last_name                        | string | null: false                   |
| email                            | string | null: false, unique: true     |
| encrypted_password               | string | null: false                   |
| birthday                         | date   | null: false                   |

### Association

- has_many :minimalists
- has_many :donations
- has_many :comments
- has_many :receives

## mini roomテーブル　（prototype）
## imageはActive Storage導入

| Column                           | Type       | Options                        |
| -------------------------------  | ---------- | -------------------------------|
| title                            | string     | null: false                    |
| concept                          | text       | null: false                    |
| user                             | references | null: false, foreign_key: true |
<!-- | price                            | integer    | null: false                    | -->

### Association

- belongs_to :user
- has_many :comments


## donationテーブル(出品)
## imageはActive Storage導入

| Column                           | Type       | Options                        |
| -------------------------------  | ---------- | -------------------------------|
| user                             | references | null: false, foreign_key: true |
| mini_room                        | references | null: false, foreign_key: true |
| name                             | string     | null: false                    |
| description                      | text       | null: false                    |
| category_id                      | integer    | null: false                    |
| condition_id                     | integer    | null: false                    |
| delivery_id                      | integer    | null: false                    |
| region_id                        | integer    | null: false                    |
| ship_id                          | integer    | null: false                    |
| size                             | integer    | null: false                    |


### Association

- belongs_to :user
- has_one :receive
- has_many :comments


## receiveテーブル(order)

| Column                           | Type       | Options                        |
| -------------------------------  | ---------- | -------------------------------|
| user                             | references | null: false, foreign_key: true |
| donation                         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :donation
- has_one :address


### addressesテーブル

| Column                           | Type       | Options                        |
| -------------------------------  | ---------- | -------------------------------|
| post_code                        | string     | null: false                    |
| region_id                        | integer    | null: false                    |
| city                             | string     | null: false                    |
| address                          | string     | null: false                    |
| building_name                    | string     |                                |
| phone_num                        | string     | null: false                    |
| order                            | references | null: false, foreign_key: true |

### Association

- belongs_to :receive


## commentsテーブり

| Column                           | Type       | Options                        |
| -------------------------------  | ---------- | -------------------------------|
| content                          | text       | null: false                    |
| prototype                        | references | null: false, foreign_key: true |
| user                             | references | null: false, foreign_key: true |

### Association

- belong_to :user
- belong_to :minimalist
- belong_to :donation


