require './lib/weather.rb'

class Airport

  attr_reader :aircraft, :capacity

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @aircraft = []
  end

  def accept_aircraft(plane)
    fail "Cannot land: airport full." if full?
    aircraft << plane
  end

  def release_aircraft
    fail "Error: There are no planes to release." if aircraft.empty?
    aircraft.pop
  end

  def full?
    aircraft.count >= 10
  end

end
