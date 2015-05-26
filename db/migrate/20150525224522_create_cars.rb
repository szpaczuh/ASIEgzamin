class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :price
      t.string :image
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
