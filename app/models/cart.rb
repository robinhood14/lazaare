# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Cart < ApplicationRecord
	belongs_to :user
	has_many :selected_items
	has_many :items, through: :selected_items

  def add_item(item_id)
    selected_item = SelectedItem.where(cart_id: self.id, item_id: item_id).first        
    if selected_item.nil?
      self.items << Item.find(item_id)
      selected_item.update(quantity: 1)
    else
      selected_item.update(quantity: selected_item.quantity.to_i + 1)
    end
  end

	# TAREK
	# VOILA LE DEBUT DE LA METHODE QUI DEVRA ETRE APPELEE LORSQUE LE USER FERA : add to cart
=begin
		
	def add_item
		self.items << #item
	end

=end

end
