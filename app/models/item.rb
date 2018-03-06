class Item < ApplicationRecord

	has_and_belongs_to_many :carts
	has_and_belongs_to_many :orders


	VALID_URL_REGEX = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/

	validates :title, presence: true, length: { maximum: 25 }
	validates :description, length: { maximum: 500}
	validates :price, numericality: { greater_than: -0.01 , less_than: 1000000 }
	validates :img_url, presence: true, length: {maximum: 2048}, format: { with: VALID_URL_REGEX }

end
