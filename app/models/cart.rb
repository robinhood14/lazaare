class Cart < ApplicationRecord
	has_many :item
	belongs_to :user
end
