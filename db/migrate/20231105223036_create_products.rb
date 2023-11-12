class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_name, null: false, unique: true
      t.date :product_date, null: true
      t.string :product_image, null: false
      t.decimal :product_price, null: false
      t.string :product_sku, null: false, unique: true
      t.text :product_description, null: true

      t.timestamps
    end
  end
end

