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
