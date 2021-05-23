class AddProductUserToUpvote < ActiveRecord::Migration[6.0]
  def change
    add_reference :upvotes, :user, null: false, foreign_key: true
    add_reference :upvotes, :product, null: false, foreign_key: true
  end
end
