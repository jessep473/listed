class AddUserIdToHouse < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :user_id, :integer
    add_index :houses, :user_id
  end
end
