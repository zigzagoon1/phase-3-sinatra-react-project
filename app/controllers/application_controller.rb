class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    
  end

  get "/areas" do 
    areas = GardenArea.all.order(location: :asc)
    areas.to_json
  end

  get "/plants" do 
    plants = Plant.all.order(location: :asc)
  end
end
