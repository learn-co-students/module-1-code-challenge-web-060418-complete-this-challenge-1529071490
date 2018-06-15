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
