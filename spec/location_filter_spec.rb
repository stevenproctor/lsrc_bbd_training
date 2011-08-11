require "locationfilter"
require "restaurant"

describe LocationFilter do
  it "It should match when the distance from the location service is less than max distance" do
    locationService = double("location service stub", :get_distance => 5)
    origin = double("location", :get_location => "75056")
    place = double("place", :get_location => "75056")
    filter = LocationFilter.new(locationService)
    filter.set_max_distance(25)
    filter.set_source_location(origin)

    filter.matches?(place).should == true
  end

  it "It should match when the distance from the location service is less than max distance" do
    locationService = double("location service stub", :get_distance => 1000)
    origin = double("location", :get_location => "90210")
    place = double("place", :get_location => "20001")
    filter = LocationFilter.new(locationService)
    filter.set_max_distance(25)
    filter.set_source_location(origin)

    filter.matches?(place).should == false
  end

  it "It should not match when distance from location service is equal max distance" do
    locationService = double("location service stub", :get_distance => 25)
    origin = double("location", :get_location => "75056")
    place = double("place", :get_location => "76039")
    filter = LocationFilter.new(locationService)
    filter.set_max_distance(25)
    filter.set_source_location(origin)

    filter.matches?(place).should == true
  end

  it "it should be able to match against a restaurant" do
    locationService = double("location service stub", :get_distance => 5)
    origin = double("location", :get_location => "75056")
    place = Restaurant.new
    place.set_location("75056")
    filter = LocationFilter.new(locationService)
    filter.set_max_distance(25)
    filter.set_source_location(origin)

    filter.matches?(place).should == true
  end
end
