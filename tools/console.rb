require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

anthony = Customer.new("Anthony", "Chang")
richee = Customer.new("Richee", "Chang")
anthony1 = Customer.new("Anthony", "Jackson")
anthony2 = Customer.new("Anthony", "Roberts")
josh = Customer.new("Josh", "Hamilton")
josh2 = Customer.new("Josh", "Jefferies")

applebees = Restaurant.new("Applebees")
chilis = Restaurant.new("Chilis")
mcdonalds = Restaurant.new("Mcdonalds")


anthony.add_review(chilis, "The chilis were delicious")
anthony.add_review(mcdonalds, "The chicken nuggets are so good!")
richee.add_review(chilis, "I love their fajitas")
josh.add_review(chilis, "This place is the worst!")
josh2.add_review(applebees, "This place has no apples or bees..")
anthony2.add_review(mcdonalds, "Why is their soft serve ice cream so good...")

binding.pry

puts ""
