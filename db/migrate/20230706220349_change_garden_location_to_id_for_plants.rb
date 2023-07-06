class ChangeGardenLocationToIdForPlants < ActiveRecord::Migration[6.1]
  def change
    remove_column :plants, :garden_location, :string
    add_column :plants, :garden_area_id, :integer
  end
end
