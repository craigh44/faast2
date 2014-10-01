require "coach"

describe Coach do 

let(:coach) {Coach.new(:capacity => 40)}
let(:passenger) {double :passenger}
let(:station) {double :station, release: true}

	def fill_coach(passenger)
		40.times {coach.accept_from(station)}
	end

	it "Should be able to accept a passenger" do 
	  expect{coach.accept_from(station)}.to change{coach.passenger_count}.by 1 
	end
	
	it "Should raise error if coach is full" do 
	  fill_coach(passenger)
	  expect{coach.accept_from(station)}.to raise_error("Coach Full")
	end
	
end	