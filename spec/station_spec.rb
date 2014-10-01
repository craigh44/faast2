require "station"

describe Station do

let(:station) {Station.new}
let(:train) {double :train} 
let(:passenger) {double :passenger}
let(:coach) {double :coach, release: true}

	it "should be able to accept a train" do
	  station.arrive(train)
	  expect(station.train_count).to eq 1
	end 

	it "Should be able to release a train" do 
	  station.arrive(train)
	  expect{station.depart(train)}.to change{station.train_count}.by -1
	end

	it "should not accept a train if a train is already there" do 
	  station.arrive(train)
	  expect{station.arrive(train)}.to raise_error("Already a train in station")
	end
end 