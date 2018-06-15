class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Restaurant.all
  #  * returns an array of all restaurants

  def self.all
    @@all
  end


 # * Restaurant.find_by_name(name)
 #   * given a string of restaurant name, returns the first restaurant that matches

 def self.find_by_name(name)
   self.all.find do |restaurant|
     restaurant.name == name
   end
 end


 # * Restaurant#reviews
 #   * returns an array of all reviews for that restaurant

 def reviews
   Review.all.select do |review|
     review.restaurant == self
   end

 end


 # * Restaurant#customers
 #   * returns all of customers who have written reviews of that restaurant. A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`

 def customers
   Review.all.collect do |review|
     if review.restaurant == self
       review.customer
     end
   end.compact

 end



end
