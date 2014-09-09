require "punter" 

describe Punter do 
	it "creates a new punter" do
		current_punter = Punter.new 1, 1, 3, 3
		expect(current_punter.xPickup).to eq(1)
		expect(current_punter.yPickup).to eq(1)
		expect(current_punter.xDestination).to eq(3)
		expect(current_punter.xDestination).to eq(3)
	end

end