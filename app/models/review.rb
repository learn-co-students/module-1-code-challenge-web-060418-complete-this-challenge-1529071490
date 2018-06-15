class Review

  attr_accessor :restaurant, :customer

  @@all = []
  # * Review.all
  #   * returns all of the reviews

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content
    @@all << self
  end

  def self.all
    @@all
  end


  # * Review#customer
  #   * returns the customer object for that given review

  #attr_accessor handles this


  # * Review#restaurant
  #   * returns the restaurant object for that given review

  #attr_accessor handles this
end
