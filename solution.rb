# Please copy/paste all three classes into this file to submit your solution!

class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.full_name_to_name_hash (full_name)
    split_name = full_name.split(" ")
    {first: split_name[0], last: split_name[1]}
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name=nil)
    return "Please enter a string" if full_name.class !=String
    name_hash = self.full_name_to_name_hash(full_name)
    found_customer = self.all.find{|customer| customer.first_name == name_hash[:first] && customer.last_name == name_hash[:last]}
  end

  def self.find_all_by_first_name(first_name=nil)
    return "Please enter a string" if first_name.class !=String
    found_customers = self.all.find_all{|customer| customer.first_name == first_name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant, content)
  end
  
end

class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name=nil)
    return "Please enter a string" if name.class !=String
    found_restaurant = self.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.find_all {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

end

class Review
    @@all = []
    attr_accessor :customer, :restaurant, :content

    def initialize (customer, restaurant, content)
        @customer, @restaurant, @content = customer, restaurant, content
        self.class.all << self
    end

    def self.all
        @@all
    end

  
end

