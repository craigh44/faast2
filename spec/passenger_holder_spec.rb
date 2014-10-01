require "passenger_holder"

describe PassengerHolder do 

	class Holder; include PassengerHolder; end

let(:holder) {Holder.new}
let(:station) {double :station, release_passenger: true}
let(:train) {double :train} 
let(:passenger) {double :passenger}
let(:coach) {double :coach, release_passenger: true}

	it "should accept passengers" do
	  holder.accept_from(station)
	  expect(holder.passenger_count).to eq 1
	end

	it "should release passengers" do 
	  holder.accept_from(station)
	  expect{holder.release_passenger}.to change{holder.passenger_count}.by -1
	end
end