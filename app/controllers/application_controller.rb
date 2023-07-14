class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    
  end

  get "/areas" do 
    areas = GardenArea.all.order(id: :asc)
    areas.to_json(include: :plants)
  end

  get "/plants" do 
    plants = Plant.all.order(id: :asc)
    plants.to_json
  end

  post "/plants" do
    new_plant = Plant.create(
      name: params[:name],
      latin_name: params[:latin_name],
      height: params[:height],
      width: params[:width],
      hardiness_zones: params[:hardiness_zones],
      description: params[:description],
      garden_area_id: params[:garden_area_id],
      location_in_area: params[:location_in_area]
    )
    new_plant.to_json
  end

end
