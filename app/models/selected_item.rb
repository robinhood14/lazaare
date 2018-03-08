class SelectedItem < ApplicationRecord
	belongs_to :cart
	belongs_to :item



=begin	def add_item(cartid, itemid)

		if (self.where(cart_id: cartid))[item_id:] == nil 
			self.create(cart_id: cartid, item_id: itemid, counter: 1)
		else
			self.where(cart_id: cartid, item_id: itemid)[counter:] += 1
		end

	end
=end

end
