# ここは商品出品のマイグレーションファイル
class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :info, null: false
      t.integer :price, null: false
      t.integer :category_id, null: false
      t.integer :sales_status_id, null: false
      t.integer :shipping_fee_status_id, null: false
      t.integer :prefecture_id, null: false
      t.integer :scheduled_delivery_id, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

# カテゴリー、商品の状態、配送料、発送元、発送までの日数は
# acitve_hashを使用するため、itemテーブルではidでの登録となる。