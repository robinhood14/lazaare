class SelectedItem < ApplicationRecord
	belongs_to :cart
	belongs_to :item

<<<<<<< HEAD
=======

=begin	def add_item(cartid, itemid)

		if (self.where(cart_id: cartid))[item_id:] == nil 
			self.create(cart_id: cartid, item_id: itemid, counter: 1)
		else
			self.where(cart_id: cartid, item_id: itemid)[counter:] += 1
		end

	end
=end
>>>>>>> dac4dcdd5d8d1043a6f946032ff8ef1c18fdfbeb
end
