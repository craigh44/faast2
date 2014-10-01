class Coach

	DEFAULT_CAPACITY = 40

	def initialize(options = {})
	  self.capacity = options.fetch(:capacity, capacity)
 	  @passengers = []
 	end

	def passenger_count
	  @passengers.count 
	end

 	def capacity
 	  @capacity ||= DEFAULT_CAPACITY
 	end

 	def capacity=(value)    
      @capacity = value
    end

	def accept_from(station)
	  raise "Coach Full" if passenger_count >= @capacity
	  @passengers << station.release
	end

	def release
	  @passengers.pop
	end

	
end