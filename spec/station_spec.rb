require "station"

describe Station do

let(:station) {Station.new}
let(:train) {double :train} 
let(:passenger) {double :passenger}

	it "should be able to accept a train" do
	  station = Station.new
	  station.arrive(train)
	  expect(station.train_count).to eq 1
	end 

	it "should not accept a train if a train is already there" do 
	  station.arrive(train)
	  expect{station.arrive(train)}.to raise_error("Already a train in station")
	end

	it "should accept passengers" do
	  station.accept(passenger)
	  expect(station.passenger_count).to eq 1
	end

end 