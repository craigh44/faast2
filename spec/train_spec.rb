require "train"

describe Train do 

	let(:train) {Train.new}
	let(:passenger) {double :passenger}


	it "Should accept passengers" do 
		train.accept(passenger)
		expect(train.passenger_count).to eq 1
	end

	it "should initialize with coaches" do
		expect(train.coach_count).to eq 4
	end

end