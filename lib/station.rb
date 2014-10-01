require_relative "passenger_holder"

class Station

	include PassengerHolder

	def initialize
	  @trains = []
	  @passengers = []
	end

	def arrive(train)
	  raise "Already a train in station" if train_count >= 1
	  @trains << train
	end

	def depart(train)
		@trains.pop
	end

	def train_count
	  @trains.count
	end

	def accept(passenger)
		@passengers << passenger
	end

end