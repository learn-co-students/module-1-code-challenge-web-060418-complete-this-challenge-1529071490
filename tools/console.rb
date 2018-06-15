require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer0 = Customer.new("Omar", "Hijazi")
customer4 = Customer.new("Essa", "Paul")
customer1  = Customer.new("Essa", "Hijazi")
customer2  = Customer.new("Obadah", "Hijazi")
customer3  = Customer.new("Karam", "Hijazi")


restaurant1 = Restaurant.new("Something1")
restaurant2 = Restaurant.new("Something2")
restaurant3 = Restaurant.new("Something3")
restaurant4 = Restaurant.new("Something2")
restaurant5 = Restaurant.new("Something5")

review1 = Review.new(customer1, restaurant1, "Excellent")
review2 = Review.new(customer3, restaurant3, "Terrible")
review3 = Review.new(customer0, restaurant4, "Outstanding")
review4 = Review.new(customer2, restaurant5, "Avoid!")
review5 = Review.new(customer3, restaurant5, "Avoid!")
review6 = Review.new(customer2, restaurant4, "Great!")
review7 = Review.new(customer1, restaurant5, "Really Bad :(")


Customer.find_by_name("Essa Hijazi")

binding.pry

puts "Hi"
