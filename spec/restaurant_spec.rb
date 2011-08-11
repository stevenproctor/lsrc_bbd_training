require "restaurant"

describe Restaurant do
    describe "a new restaurant" do
      it "gives a new restaurant a score of zero" do
        restaurant = Restaurant.new
        restaurant.score.should == 0
      end

      it "gives a new restaurant a price of zero" do
        restaurant = Restaurant.new
        restaurant.price.should == 0
      end
    end

    it "bases a score on a rating" do
      restaurant = Restaurant.new
      restaurant.add_rating(3)
      restaurant.score.should == 3
    end

    it "bases a score on the average multiple ratings" do
      restaurant = Restaurant.new
      restaurant.add_rating(3)
      restaurant.add_rating(5)
      restaurant.score.should == 4
    end

    it "a restaurant can have a price on it" do
      restaurant = Restaurant.new
      restaurant.set_price(2)
      restaurant.price.should == 2
    end
end
