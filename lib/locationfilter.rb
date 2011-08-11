class LocationFilter
  attr_accessor :max_distance, :origin, :location_service

  def initialize(location_service)
    @location_service = location_service
  end

  def set_max_distance(max)
    @max_distance = max
  end

  def set_source_location(origin)
    @origin = origin
  end

  def matches?(place)
    location_service.get_distance(origin.get_location, place.get_location) <= max_distance
  end
end
