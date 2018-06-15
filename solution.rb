# Please copy/paste all three classes into this file to submit your solution!
class Customer

  attr_accessor :first_name, :last_name

@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

 def self.all
   @@all
 end


  def full_name
    "#{first_name} #{last_name}"
  end

  # * Customer.find_all_by_first_name(name)
  #   * given a string of a first name, returns an **array** containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.map do |customer|
      customer if customer.first_name == name
    end.compact
  end

  # * Customer.find_by_name(name)
  #   * given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(name)
    name_divided = name.split(" ")
    self.all.find{ |customer|
      customer.first_name == name_divided[0] && customer.last_name == name_divided[-1]}
  end

  # * Customer.all_names
  #   * should return an **array** of all of the customer full names
  def self.all_names
    self.all.map {|customer| customer.full_name}
  end


  # * Customer#add_review(restaurant, content)
  #   * given a **restaurant object** and some review content (as a string), creates a new review and associates it with that customer and restaurant. A `Review` belongs to a `Customer` and belongs to a `Restaurant`

  def add_review(restaurant, rev_text)
    Review.new(restaurant, self, rev_text)
  end


end


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
