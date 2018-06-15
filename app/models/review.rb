class Review
    
    @@all = []

    attr_accessor :content, :customer, :restaurant

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

