require_relative "taxi"
require_relative "interface"

class Controller
	attr_accessor :taxi_array

	def initialize(taxi_array = [])
		@taxi_array = taxi_array
	end

	def add_taxi input_taxi
		taxi_array.push(input_taxi)
		taxi_array.length - 1
	end

	def get_taxi taxi_index
		taxi_array[taxi_index]
	end

	def run_commands (taxi_index)
		commands = Interface.accept_commands
		commands.chars do |command| 
			case command
			when 'M' 
				taxi_array[taxi_index].move
				puts "Moving forward"
			when 'L'
				taxi_array[taxi_index].turn_left
				puts "Turning left"
			when 'R'
				taxi_array[taxi_index].turn_right
				puts "Turning right"
			else
				"Invalid input"
			end
		end
	end


end