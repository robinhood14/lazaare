# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  price       :decimal(8, 2)    default(0.0)
#  img_url     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ApplicationRecord

	has_many :carts, through: :carts_items 
	has_and_belongs_to_many :orders


	VALID_URL_REGEX = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/

	validates :title, presence: true, length: { maximum: 25 }
	validates :description, length: { maximum: 500}
	validates :price, numericality: { greater_than: -0.01 , less_than: 1000000 }
	validates :img_url, presence: true, length: {maximum: 2048}, format: { with: VALID_URL_REGEX }

end
