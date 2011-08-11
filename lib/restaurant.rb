class Restaurant

  attr_accessor :ratings
  attr_accessor :price

  def initialize
    @ratings = []
    @price = 0
  end

  def score
    return 0 if ratings.empty?
    return ratings.inject(:+) / ratings.count
  end

  def add_rating(new_rating)
    ratings << new_rating
  end

  def set_price(price)
    @price = price
  end

  def price
    return @price
  end
end
