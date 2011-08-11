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

    describe "a restaurant has a price associated with it" do
      it "a restaurant can have a price on it" do
        restaurant = Restaurant.new
        restaurant.set_price(2)
        restaurant.price.should == 2
      end

      it "a restaurant's price cannot be below 0" do
        restaurant = Restaurant.new
        restaurant.set_price(-1)
        restaurant.price.should == 0
      end

      it "a restaurant's price cannot be below 0" do
        restaurant = Restaurant.new
        restaurant.set_price(0)
        restaurant.price.should == 0
      end

      it "a restaurant's price cannot be above 5" do
        restaurant = Restaurant.new
        restaurant.set_price(6)
        restaurant.price.should == 0
      end

      it "a restaurant's price can be a 5" do
        restaurant = Restaurant.new
        restaurant.set_price(5)
        restaurant.price.should == 5
      end
    end

    describe "a restaurant has a location associated with it" do
      restaurant = Restaurant.new
      restaurant.set_location("76034")
      restaurant.get_location.should == "76034"
    end
end
