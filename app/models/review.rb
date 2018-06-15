class Review

  # * Review#customer - attr_accessor
  #   * returns the customer object for that given review
  # * Review#restaurant-attr_accessor
  #   # * returns the restaurant object for that given review

attr_accessor :restaurant, :customer, :rev_text

@@all =[]

  def self.all
    @@all
  end

  def initialize(restaurant, customer, rev_text)
    @restaurant = restaurant
    @customer = customer
    @rev_text = rev_text
    self.class.all << self
  end


end
