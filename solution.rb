# Please copy/paste all three classes into this file to submit your solution!
class Customer
    attr_accessor :first_name, :last_name
  
    @@all = []
  
    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name  = last_name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def full_name
      "#{first_name} #{last_name}"
    end
  
    def self.find_by_name(full_name)
      self.all.find do |customer|
        customer.full_name === full_name
      end
    end
  
    def self.find_all_by_first_name(name)
      self.all.select do |customer|
        customer.first_name == name
      end
    end
  
    def self.all_names
      self.all.collect do |customer|
        customer.full_name
      end
    end
  
    def add_review(restaurant, content)
      Review.new(content, self, restaurant)
    end
    
  end

  class Review
    
    attr_accessor :content, :customer, :restaurant

    @@all = []

    def initialize(content, customer, restaurant)
        @content = content
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end

end

class Restaurant
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.find_by_name(name)
      self.all.find do |restaurant|
        restaurant.name == name
      end
    end
  
    def self.all
      @@all
    end
  
    def reviews
      Review.all.select do |review|
        review.restaurant == self
      end
    end
  
    def customers
      reviews.collect do |review|
        review.customer
      end
    end
  
  end
  