class CreateSelectedItems < ActiveRecord::Migration[5.1]
  def change
    create_table :selected_items do |t|
      t.integer :cart_id
      t.integer :item_id
      t.integer :count

      t.timestamps
    end
      add_index :selected_items, [:cart_id, :item_id]
  end
end
