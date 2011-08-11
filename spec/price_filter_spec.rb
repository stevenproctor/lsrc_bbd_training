require "pricefilter"

describe PriceFilter do
  describe "new PriceFilter objects" do
    it "should have a min price filter of 0" do
      filter = PriceFilter.new
      filter.min_price.should == 0
    end
    it "should have a max price filter of 5" do
      filter = PriceFilter.new
      filter.max_price.should == 5
    end
    it "should have a max price of 3" do
      filter = PriceFilter.new
      filter.set_max_price(3)
      filter.max_price.should == 3
    end

  end

  describe "it should match if in the price range" do
    it "should match if the price is in the range" do
      filter = PriceFilter.new
      price = PriceStub.new(3)

      filter.matches?(price).should == true
    end
  end

  it "it should not match if out of range" do
    filter = PriceFilter.new
    filter.set_max_price(2)

    price = PriceStub.new(4)
    filter.matches?(price).should == false
  end
end

class PriceStub
  attr_accessor :price

  def initialize(price = 0)
    @price = price
  end

  def price
    @price
  end
end
