class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(resturaunt)
    Review.new(1, "really bad food", resturaunt, self)
  end

  def all_reviews
    review_amount = Review.all.select {|review| review.customer == self}
    review_amount.length
  end

  def reviewed_resturaunts
   reviewed_resturaunts = Review.all.map {|review| review.restaurant}
    reviewed_resturaunts.uniq
  end

  def self.all
     @@all
  end
end
