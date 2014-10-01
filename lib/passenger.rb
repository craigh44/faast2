class Passenger

	DEFAULT_BALANCE = 10

	def initialize(options = {})
		@balance = options.fetch(:balance, balance)
	end

	def balance
		@balance ||= DEFAULT_BALANCE
	end

	def balance=(value)
		@balance ||= DEFAULT_BALANCE
	end

	def touch_in(station)
		raise "No Funds" if balance < 2
		station.accept(self)
		@balance -= 2
	end

end