class Coach

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

	def accept(passenger)
		raise "Coach Full" if passenger_count >= @capacity
		@passengers << passenger
	end

	def passenger_count
		@passengers.count 
	end
end