class Product < ApplicationRecord
  belongs_to :user
  has_many :upvotes
  belongs_to :category
end
