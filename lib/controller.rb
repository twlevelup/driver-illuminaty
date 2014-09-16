require_relative "taxi"
require_relative "punter"
require_relative "interface"
require "pry"

class Controller
	attr_accessor :taxi_array

	def initialize(taxi_array = [])
		@taxi_array = taxi_array
	end

	def control
		option = Interface.select_option
		case option
		when 1
			taxi_states = Interface.accept_taxi_states
			new_taxi = Taxi.new taxi_states[0].to_i, taxi_states[1].to_i, taxi_states[2].strip
			add_taxi new_taxi
		when 2
			punter_states = Interface.accept_punter_states
    	    current_punter = Punter.new punter_states[0].to_i, punter_states[1].to_i, 
    	                            punter_states[2].to_i, punter_states[3].to_i
			taxi_index = Interface.accept_taxi_index
			if taxi_index > -1 && taxi_index < taxi_array.length
				assign_punter taxi_index, current_punter
			else
				puts "Invalid taxi index."
			end
		when 3
			taxi_index = Interface.accept_taxi_index
			if taxi_index > -1 && taxi_index < taxi_array.length
				commands = Interface.accept_commands
				run_commands taxi_index, commands
			else
				puts "Invalid taxi index."
			end
		when 4
			taxi_index = Interface.accept_taxi_index
			if taxi_index > -1 && taxi_index < taxi_array.length
				current_taxi = taxi_array[taxi_index]
				puts "Location info: " + current_taxi.location
				puts "Vacant? " + (current_taxi.is_vacant? ? "Yes": "No")
#				puts "Arrived pick-up location? " + (current_taxi.arrived_pickup? ? "Yes" : "No") 
#				puts "Arrived destination? " + (current_taxi.arrived_destination? ? "Yes" : "No")
			else
				puts "Invalid taxi index."
			end
		else
			puts "Invalid option"
		end
	end

	def add_taxi(new_taxi)
		taxi_array.push(new_taxi)
		taxi_array.length - 1
	end

	def get_taxi(taxi_index)
		taxi_array[taxi_index]
	end

    def assign_punter(taxi_index, current_punter)
    	current_taxi = taxi_array[taxi_index]
    	current_taxi.assign_punter current_punter
    end	

	def run_commands (taxi_index, commands)
		current_taxi = taxi_array[taxi_index]		
		commands.chars do |command| 
			case command
			when 'M' 
				current_taxi.move
				puts "Moving forward"
			when 'L'
				current_taxi.turn_left
				puts "Turning left"
			when 'R'
				current_taxi.turn_right
				puts "Turning right"
			else
				"Invalid commands"
			end
		end
		puts "Current location: " + current_taxi.location
	end
end
