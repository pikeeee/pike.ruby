class AddUserIdToFacebooks < ActiveRecord::Migration[7.0]
  def change
    add_column :facebooks, :user_id, :integer
  end
end
