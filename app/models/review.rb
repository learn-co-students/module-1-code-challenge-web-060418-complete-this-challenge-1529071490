class Review
    attr_accessor :customer, :restaurant, :text
    @@all = []

    def initialize(customer, restaurant, text)
        @customer = customer
        @restaurant = restaurant
        @text = text
        @@all << self
    end

    def self.all
        @@all
    end
  
end

