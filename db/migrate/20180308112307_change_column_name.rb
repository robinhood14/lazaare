class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :selected_items, :count, :quantity
  end
end
