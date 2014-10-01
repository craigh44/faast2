class Train

	def initialize
		@coaches = [1, 2, 3, 4]
		@passengers = []
	end

	def accept(passenger)
		@passengers << passenger
	end

	def passenger_count
		@passengers.count
	end

	def coach_count
		@coaches.count
	end
end