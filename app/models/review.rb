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

