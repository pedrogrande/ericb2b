class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :retailer_id

      t.timestamps
    end
  end
end
