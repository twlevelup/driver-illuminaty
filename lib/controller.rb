require_relative "taxi"

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

	def parse_commands (taxi_index, commands)
		commands.chars do |command| 
			case command
			when 'M' 
				taxi_array[taxi_index].move
				puts "Moving forward"
			when 'L'
				taxi_array[taxi_index].move_left
				puts "Turning left"
			when 'R'
				#	taxi_array[taxi_index].move_right
				# puts "Turning right"
			else
				"Invalid input"
			end
		end
	end


end

#(1..3).each do |x|

#	inp = $stdin.gets
#	array = inp.split(' ')
#	state = array[0].split(',')
#	commands = array[1]

#	puts state
#	puts commands

#	t = Taxi.new state[0].to_i, state[1].to_i, state[2]

#	t.set_destination 1, 3

#	commands.chars do |command| 
#		case command
#		when 'M' 
#			t.move
#			puts "Moving forward"
#		when 'L'
#			t.move_left
#			puts "Turning left"
#		when 'R' 
#			t.move_right
#		else

#		end

#	end
#	puts t.location


	
#end
	