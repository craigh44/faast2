module PassengerHolder

	def passengers
		@passengers ||= []
	end

	def passenger_count
	  @passengers.count 
	end

	def release_passenger
	  @passengers.pop
	end

	def accept_from(place)
	  passengers << place.release_passenger
	end

end