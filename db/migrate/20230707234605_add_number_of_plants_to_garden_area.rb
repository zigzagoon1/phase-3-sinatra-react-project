class AddNumberOfPlantsToGardenArea < ActiveRecord::Migration[6.1]
  def change
    add_column :garden_areas, :number_of_plants, :integer
  end
end
