require "controller" 

describe Controller do 
	it "creates a new taxi" do
		current_controller = Controller.new
		temporary_taxi = Taxi.new 1, 1, "N"
		taxi_index = current_controller.add_taxi temporary_taxi
		#current_controller.parse_commands taxi_index, "MMM"
		controller_taxi = current_controller.get_taxi taxi_index
		expect(controller_taxi.location).to eq("1, 1, N")
	end

	it "parse a sequence of commands" do
		current_controller = Controller.new
		temporary_taxi = Taxi.new 1, 1, "N"
		taxi_index = current_controller.add_taxi temporary_taxi
		current_controller.parse_commands taxi_index, "MLM"
		controller_taxi = current_controller.get_taxi taxi_index
		expect(controller_taxi.location).to eq("0, 2, W")
	end

end