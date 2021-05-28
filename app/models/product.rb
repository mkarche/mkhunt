class Product < ApplicationRecord
  has_many :upvotes
  belongs_to :category
  validates :name, presence: true ,uniqueness: true
end
