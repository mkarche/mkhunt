class RemoveUserFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :user_id, :bigint
  end
end
