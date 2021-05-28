class Category < ApplicationRecord
  has_many :products
  validates :category_id, presence: true
  validates :name, presence: true ,uniqueness: true
end
