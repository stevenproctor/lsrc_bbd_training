class Restaurant

  MAXPRICE = 5
  MINPRICE = 0

  attr_accessor :ratings, :price, :location

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

  def set_location(location)
    @location = location
  end

  def get_location
    @location
  end

  def set_price(price)
    return if price < MINPRICE || price > MAXPRICE
    @price = price
  end

  def price
    return @price
  end
end
