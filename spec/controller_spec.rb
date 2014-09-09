require "controller" 

describe Controller do 
	it "creates a new taxi" do
		current_controller = Controller.new
		temporary_taxi = Taxi.new 1, 1, "N"
		taxi_index = current_controller.add_taxi temporary_taxi
		controller_taxi = current_controller.get_taxi taxi_index
		expect(controller_taxi.location).to eq("1, 1, N")
	end

	it "run multiple commands" do
		current_controller = Controller.new
		temporary_taxi = Taxi.new 1, 1, "N"
		taxi_index = current_controller.add_taxi temporary_taxi
		current_controller.run_commands taxi_index
		controller_taxi = current_controller.get_taxi taxi_index
		expect(controller_taxi.location).to eq("0, 2, W")
	end

end