class ChangeGardenAreaNameToId < ActiveRecord::Migration[6.1]
  def change
    remove_column :garden_areas, :name, :string
  end
end
