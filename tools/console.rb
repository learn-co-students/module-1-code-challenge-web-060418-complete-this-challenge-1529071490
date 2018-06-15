require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#------costomers

jim = Customer.new("Jim", "Bo")
bob = Customer.new("Bobby", "Boy")
jim2 = Customer.new("Jim", "Bo2")

jimFN = "Jim Bo"


#-Restaurants
food = Restaurant.new("Food")
drink = Restaurant.new("Drink")
bar = Restaurant.new("Food and Drink")


#------Reviews

rev1 = Review.new(food, jim, "liked it")


#-----costomer reviews

bob.add_review(drink, "Drink wasn't strong enough")
jim.add_review(drink, "Drink was to strong")
jim2.add_review(drink, "Loved it!")

binding.pry

puts "there yet?"
