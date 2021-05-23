class CreateUpvotes < ActiveRecord::Migration[6.0]
  def change
    create_table :upvotes do |t|

      t.timestamps
    end
  end
end
