# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name

  @@all = []


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  # Customer.all
  #   * should return **all** of the customer instances

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

# Customer.find_by_name(name)
#   * given a string of a **full name**, returns the **first customer** whose full name matches

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

#
# * Customer.find_all_by_first_name(name)
#   * given a string of a first name, returns an **array** containing all customers with that first name

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      name == customer.first_name
    end
  end

# * Customer.all_names
#   * should return an **array** of all of the customer full names

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end
  end
# Customer#add_review(restaurant, content)
#   * given a **restaurant object** and some review content (as a string), creates a new review and associates it with that customer and restaurant. A `Review` belongs to a `Customer` and belongs to a `Restaurant`

  def add_review(restaurant, content)
    Review.new(restaurant, self, content)
  end

end

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
