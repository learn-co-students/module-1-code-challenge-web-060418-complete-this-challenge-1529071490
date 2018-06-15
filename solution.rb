# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name (full_name)
    self.all.find {|customer| customer.full_name == full_name}
  end

  def self.all_names
    self.all.collect {|customer| customer.full_name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select {|customer| customer.first_name == first_name}
  end

  def add_review(restaurant, comment)
    Review.new(self, restaurant, comment)
  end

end


# ***************************************************************************


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


# ***************************************************************************


class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end


  def reviews
    Review.all.select {|review| review.restaurant == self}
  end


  def customers
    self.reviews.collect {|review| review.customer}
  end

end
