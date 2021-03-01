require_relative '../config/environment.rb'

#Painting initialize(title, price, artist="unknown artist", gallery="unknown gallery")
#Gallery initialize(name, city)
#Artist initialize(name, years_experience)

#Galleries
g_names = ["My Living Room", "My Kitchen", "My Closet", "My Bathroom"]
g_cities = ["Washington, DC", "Washington, DC", "Sqkrz Palace", "Sqkrz Palace"]

g1 = Gallery.new(g_names[0], g_cities[0])
g2 = Gallery.new(g_names[1], g_cities[1])
g3 = Gallery.new(g_names[2], g_cities[2])
g4 = Gallery.new(g_names[3], g_cities[3])

#Artists

sqkrz = Artist.new("Sqkrz", 8)
cocoa = Artist.new("Cocoa", 13)
leche = Artist.new("Leche", 13)
panther = Artist.new("Dwayne", 15)
jerk = Artist.new("Cory", 11)

#Paintings

p1 = Painting.new("Deep Space Donut", 30, sqkrz, g2)
p2 = Painting.new("Ocean Worlds", 10, sqkrz, g1)
p3 = Painting.new("There Is No Easy Way", 500, cocoa, g1)
p4 = Painting.new("Holey Sculpture", 15, leche, g3)
p5 = Painting.new("Friendship", 1500, leche, g3)
p6 = Painting.new("Tub Yowl", 150, panther, g4)
p7 = Painting.new("Don't Do It", 50, jerk, g4)



binding.pry

puts "Bob Ross rules."
