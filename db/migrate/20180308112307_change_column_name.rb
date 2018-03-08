class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :selected_items, :count, :counter
  end
end
