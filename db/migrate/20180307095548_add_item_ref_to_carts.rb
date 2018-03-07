class AddItemRefToCarts < ActiveRecord::Migration[5.1]
  def change
    add_reference :carts, :item, foreign_key: true
  end
end
