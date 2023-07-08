class AddLocationToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :location_in_area, :integer
  end
end
