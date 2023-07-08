puts "🌱 Seeding spices..."

# Seed your database here

GardenArea.create(:location => "Upper Left", :length => "4ft", :width => "4ft", :number_of_plants => 5)
GardenArea.create(:location => "Lower Left", :length => "3ft", :width => "3ft", :number_of_plants => 5)
GardenArea.create(:location => "Upper Right", :length => "6ft", :width => "6ft", :number_of_plants => 5)
GardenArea.create(:location => "Lower Right", :length => "4ft", :width => "4ft", :number_of_plants => 5)

plants = ["Rose", "Pansy", "Tulip", "Dahlia"]
i = 0
5.times do 
    i += 1
   plant = Plant.create(:name => "Marigold", :latin_name => "Calendula officinalis", :height => "31in", :width => "6-9in", 
    :hardiness_zones => "2-11", :garden_area_id => 1, 
    :description => "Marigold has yellow, orange, or red flowers", :location_in_area => i)
end 
i = 0
3.times do 
    i += 1
    plant = Plant.create(:name => "Dahlia", :latin_name => "Dahlia pinnata", :height => "15-72in", :width => "12-18in", 
        :hardiness_zones => "8-10", :garden_area_id => 2, 
        :description => "Varies in size from twelve inches to 6 feet. Dahlias are my favorite flower!", :location_in_area => i)
end


puts "✅ Done seeding!"
