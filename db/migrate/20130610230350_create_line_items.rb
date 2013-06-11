class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :cart
      t.integer :product_size_id
      t.integer :quantity
      t.decimal :cost

      t.timestamps
    end
    add_index :line_items, :cart_id
  end
end
