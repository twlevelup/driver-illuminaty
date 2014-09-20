require "controller" 

describe Controller do 
	it "creates a new taxi" do
		current_controller = Controller.new
		new_taxi = Taxi.new 1, 1, "N"
		taxi_index = current_controller.add_taxi new_taxi
		current_taxi = current_controller.get_taxi taxi_index
		expect(current_taxi.location).to eq("1, 1, N")
	end

	it "run multiple commands" do
		current_controller = Controller.new
		new_taxi = Taxi.new 1, 1, "N"
		taxi_index = current_controller.add_taxi new_taxi
		current_taxi = current_controller.get_taxi taxi_index
		commands = "MLM"
		current_controller.run_commands taxi_index, commands		
		expect(current_taxi.location).to eq("0, 2, W")
	end

	# Added by Rene
	it "run multiple commands trying to go outside Boundaries" do
		current_controller = Controller.new
		new_taxi = Taxi.new 1, 1, "N"
		taxi_index = current_controller.add_taxi new_taxi
		current_taxi = current_controller.get_taxi taxi_index
		commands = "MMMMM"
		current_controller.run_commands taxi_index, commands		
		expect(current_taxi.location).to eq("1, 6, N")
	end
	# Added by Rene
end