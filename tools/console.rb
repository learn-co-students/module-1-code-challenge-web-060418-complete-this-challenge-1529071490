require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Jared", "Chamberlain")
customer2 = Customer.new("Jared", "Notchamberlain")
customer3 = Customer.new("Sterling", "Archer")
customer4 = Customer.new("Jared", "Chamberlain")


restaurant1 = Restaurant.new("Mcdonalds")
restaurant2 = Restaurant.new("Cava")
restaurant3 = Restaurant.new("Rice Bar")

review1 = customer1.add_review(restaurant1, "Cheap")
review2 = customer2.add_review(restaurant1, "Bad Quality")
review3 = customer1.add_review(restaurant2, "Delicious")
review3 = customer1.add_review(restaurant2, "Favorite")



binding.pry

puts " "