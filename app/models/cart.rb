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
end
