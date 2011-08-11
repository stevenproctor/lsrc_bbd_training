class PriceFilter
  attr_accessor :min_price, :max_price

  def initialize
    @min_price = 0
    @max_price = 5
  end

  def set_max_price(max)
    @max_price = max
  end

  def set_min_price(min)
    @min_price = min
  end

  def min_price
    @min_price
  end

  def max_price
    @max_price
  end

  def matches?(item)
    (item.price >= min_price) && (item.price <= max_price)
  end
end
