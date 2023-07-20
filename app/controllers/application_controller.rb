class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    
  end

  get "/areas" do 
    areas = GardenArea.all.order(id: :asc)
    areas.to_json(include: :plants)
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

  patch "/plants/:id" do 
    plant = Plant.find(params[:id])
    plant.update({
      name: params[:name],
      garden_area_id: params[:garden_area_id],
      location_in_area: params[:location_in_area],
      latin_name: params[:latin_name],
      height: params[:height],
      width: params[:width],
      hardiness_zones: params[:hardiness_zones],
      description: params[:description]
    })
  end

  delete "/plants/:id" do
    plant = Plant.find(params[:id])
    plant.delete
  end

end
