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

FactoryBot.define do
  factory :item do
    title "MyString"
    description "MyText"
    price "9.99"
    img_url "MyString"
  end
end
