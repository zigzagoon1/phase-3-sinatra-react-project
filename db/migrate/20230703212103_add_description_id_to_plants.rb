class AddDescriptionIdToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :description, :string
  end
end
