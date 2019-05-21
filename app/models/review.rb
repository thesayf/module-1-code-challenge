class Review

attr_reader :rating, :content, :restaurant, :customer

@@all = []

def initialize(rating, content, restaurant, customer)
    @rating = rating
    @content = content
    @restaurant = restaurant
    @customer = customer
    @@all << self
  end

  def self.all
     @@all
  end

end
