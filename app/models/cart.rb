class Cart < ApplicationRecord
	has_and belongs_to_many :items
	belongs_to :user
end
