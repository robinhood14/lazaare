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


	def add_item(item)
        self.items << item
    end

	# TAREK
	# VOILA LE DEBUT DE LA METHODE QUI DEVRA ETRE APPELEE LORSQUE LE USER FERA : add to cart
=begin
		
	def add_item
		self.items << #item
	end

=end

end
