puts "🌱 Seeding spices..."

# Seed your database here

GardenArea.create(:name => "Garden Area 1", :location => "Upper Left", :length => "4ft", :width => "4ft")
GardenArea.create(:name => "Garden Area 2", :location => "Lower Left", :length => "3ft", :width => "3ft")
GardenArea.create(:name => "Garden Area 3", :location => "Upper Right", :length => "6ft", :width => "6ft")
GardenArea.create(:name => "Garden Area 4", :location => "Lower Right", :length => "4ft", :width => "4ft")

plants = ["Rose", "Pansy", "Tulip", "Dahlia"]

4.times do 
   plant = Plant.create(:name => "Marigold", :latin_name => "Calendula officinalis", :height => "31in", :width => "6-9in", 
    :hardiness_zones => "2-11", :garden_location => "Garden Area 1")
end 

3.times do 
    plant = Plant.create(:name => "Dahlia", :latin_name => "Dahlia pinnata", :height => "15-72in", :width => "12-18in", 
        :hardiness_zones => "8-10", :garden_location => "Garden Area 2")
end



puts "✅ Done seeding!"
