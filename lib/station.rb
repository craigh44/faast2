class Station

	def initialize
	  @trains = []
	  @passengers = []
	end

	def arrive(train)
	  raise "Already a train in station" if train_count >= 1
	  @trains << train
	end

	def train_count
	  @trains.count
	end

	def accept_from(coach)
 	  @passengers << coach.release
	end

	def accept(passenger)
		@passengers << passenger
	end

	def release
		@passengers.pop
	end

	def passenger_count
	  @passengers.count 
	end
end