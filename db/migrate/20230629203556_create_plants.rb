class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :latin_name
      t.integer :height
      t.integer :width
      t.integer :hardiness_zones
      t.string :garden_location
    end
  end
end
