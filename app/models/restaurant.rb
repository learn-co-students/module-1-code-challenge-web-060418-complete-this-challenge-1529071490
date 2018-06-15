class Restaurant


  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
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
    Review.all.map do |review|
      review if review.restaurant == self
    end.compact
  end


   # * Restaurant#customers
   #   * returns all of customers who have written reviews of that restaurant. A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`

   def customers
     Review.all.map do |review|
       review.customer if review.restaurant == self
     end.compact
   end

end
