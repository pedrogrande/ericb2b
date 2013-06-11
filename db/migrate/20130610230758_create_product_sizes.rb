class CreateProductSizes < ActiveRecord::Migration
  def change
    create_table :product_sizes do |t|
      t.references :size
      t.references :product

      t.timestamps
    end
    add_index :product_sizes, :size_id
    add_index :product_sizes, :product_id
  end
end
