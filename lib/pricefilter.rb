class PriceFilter
  attr_accessor :max_price

  def initialize
    @max_price = 5
  end
  def set_max_price(max)
    @max_price = max
  end

  def min_price
    0
  end

  def max_price
    @max_price
  end

  def matches?(item)
    (item.price >= min_price) && (item.price <= max_price)
  end
end
