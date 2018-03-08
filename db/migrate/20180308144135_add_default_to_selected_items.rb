class AddDefaultToSelectedItems < ActiveRecord::Migration[5.1]
  def change
  	change_column :selected_items, :quantity, :integer, default: 1
  end
end
