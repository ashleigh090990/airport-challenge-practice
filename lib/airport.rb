require_relative "plane"

class Airport
  attr_accessor :capacity, :planes
  
  def initialize
  	@capacity = 6
  	@planes = []
  end

  def permission_to_land plane
  	fail 'Permission denied' if reached_capacity?
  	@planes << plane
  end

  def reached_capacity?
  	@planes.length >= capacity
  end
end
