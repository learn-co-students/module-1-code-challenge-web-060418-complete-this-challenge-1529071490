class Review
  attr_accessor :customer, :restaurant, :comment

  @@all = []

  def initialize(customer, restaurant, comment)
    @customer = customer
    @restaurant = restaurant
    @comment = comment
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

end
