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

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def self.find_by_name(full_name)
    #return the first match
    self.all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(name)
    #return an array
    self.all.collect do |customer|
      customer if customer.first_name == name
    end.compact
  end
end
