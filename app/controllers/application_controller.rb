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
end
