require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'

def reload
  load 'config/environment.rb'
end


billy = Customer.new("Billy", "Bob")
janet = Customer.new("Janet", "Jackson")
johnny = Customer.new("Johnny", "Cash")
bill = Customer.new("Billy", "Smith")

burgerjoint = Restaurant.new("Burgerjoint")
andpizza = Restaurant.new("Andpizza")
saladbar = Restaurant.new("Salad Bar")

janet.add_review(burgerjoint, "Amazing food")
janet.add_review(andpizza, "Meh pizza")
johnny.add_review(burgerjoint, "I actually don't like burgers")
johnny.add_review(saladbar, "I really like salads, so healthy")
johnny.add_review(andpizza, "I'm not a fan of pizza")

test = Review.new(billy, andpizza, "Just wow!")

Customer.all
Restaurant.all
Review.all


binding.pry
puts "byeee"