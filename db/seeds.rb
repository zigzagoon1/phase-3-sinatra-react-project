puts "🌱 Seeding spices..."

# Seed your database here

GardenArea.create(:location => "Upper Left", :length => "4ft", :width => "4ft")
GardenArea.create(:location => "Lower Left", :length => "3ft", :width => "3ft")
GardenArea.create(:location => "Upper Right", :length => "6ft", :width => "6ft")
GardenArea.create(:location => "Lower Right", :length => "4ft", :width => "4ft")

plants = ["Rose", "Pansy", "Tulip", "Dahlia"]

4.times do 
   plant = Plant.create(:name => "Marigold", :latin_name => "Calendula officinalis", :height => "31in", :width => "6-9in", 
    :hardiness_zones => "2-11", :garden_location => GardenArea.first.location, 
    :description => "Marigold has yellow, orange, or red flowers")
end 

3.times do 
    plant = Plant.create(:name => "Dahlia", :latin_name => "Dahlia pinnata", :height => "15-72in", :width => "12-18in", 
        :hardiness_zones => "8-10", :garden_location => GardenArea.find(2).location, 
        :description => "Varies in size from twelve inches to 6 feet. Dahlias are my favorite flower!")
end



puts "✅ Done seeding!"
