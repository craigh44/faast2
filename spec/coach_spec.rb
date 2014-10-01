require "coach"

describe Coach do 

let(:coach) {Coach.new(:capacity => 40)}
let(:passenger) {double :passenger}
let(:station) {double :station, release: true, :empty? => true}
let(:train) {double :train}

	def fill_coach(passenger)
		40.times {coach.accept_from(station)}
	end

	it "Should raise error if coach is full" do
	  fill_coach(passenger)
	  expect{coach.accept_from(station)}.to raise_error("Coach Full")
	end
end