class Restaurant
  attr_reader :name

   @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    customer_reviews = Review.all.map {|review| review.customer}
    customer_reviews.uniq
  end

  def reviews
   our_reviews = Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
all_ratings = Review.all.map{|review| review.rating}
total_num_ratings = all_ratings.inject(0){|sum,x| sum + x }
total_num_ratings/all_ratings.length
  end

  def self.all
     @@all
  end

end
