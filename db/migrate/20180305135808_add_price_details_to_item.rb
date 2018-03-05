class AddPriceDetailsToItem < ActiveRecord::Migration[5.1]
  def up
  	change_column :items, :price, :decimal, default: 0.00, precision: 8, scale: 2
 	end

  def down
 	  change_column :items, :price, :decimal, default: nil
	end
end
