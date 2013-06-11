class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :session

      t.timestamps
    end
    add_index :carts, :session_id
  end
end
