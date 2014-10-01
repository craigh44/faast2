require "passenger"

describe Passenger do 

	let(:passenger) {Passenger.new(:balance => 20)}
	let(:station) {double station: :accept}

	def empty_balance
		allow(station).to receive(:accept)
		10.times {passenger.touch_in(station)}
	end

	it "Should be able to set balance on initilization" do 
	  expect(passenger.balance).to eq 20
	end

	it "Should minus 2 from balance when touches in" do 
	  allow(station).to receive(:accept)
	  expect{passenger.touch_in(station)}.to change{passenger.balance}.by -2
	end

	it "Should raise error if balance in less than 2 and tries to touch in" do 
	  empty_balance
      expect{passenger.touch_in(station)}.to raise_error("No Funds")
	end
end