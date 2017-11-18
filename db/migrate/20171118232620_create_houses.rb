class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :title
      t.string :address
      t.string :price
      t.string :available
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
