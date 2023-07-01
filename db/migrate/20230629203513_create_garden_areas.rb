class CreateGardenAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :garden_areas do |t|
      t.string :name
      t.string :location
      t.integer :length
      t.integer :width
    end
  end
end
