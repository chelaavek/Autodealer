class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :brand_id
      t.integer :year
      t.string :model
      t.string :exterior_color
      t.string :interior_color
      t.string :image_url
      t.string :engine
      t.text :fuel_consumption
      t.text :options
      t.timestamps
    end
  end
end
