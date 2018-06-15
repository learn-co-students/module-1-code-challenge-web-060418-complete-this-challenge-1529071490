require_relative '../config/environment.rb'

require_relative '../app/models/customer.rb'

def reload
  load 'config/environment.rb'
end

bob = Customer.new("Bob", "Jones")

jim = Customer.new("Jim", "Jones")

mcd = Restaurant.new("McDonnalds")

bk = Restaurant.new("Burger King")

r1 = Review.new(bk, jim, "Sucks")
r2 = Review.new(mcd, bob, "Awesome")
r3 = Review.new(bk, bob, "Amazing")

binding.pry


puts "Fun!"
