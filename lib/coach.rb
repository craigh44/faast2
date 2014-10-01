require_relative "passenger_holder"

class Coach

	include PassengerHolder

	DEFAULT_CAPACITY = 40

	def initialize(options = {})
	  self.capacity = options.fetch(:capacity, capacity)
 	  @passengers = []
 	end

 	def capacity
 	  @capacity ||= DEFAULT_CAPACITY
 	end

 	def capacity=(value)    
      @capacity = value
    end

    def accept_from(place)
	  raise "Coach Full" if passenger_count >= @capacity
	  @passengers << place.release_passenger
	end
end