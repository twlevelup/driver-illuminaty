require "taxi"
#(1..3).each do |x|

	inp = $stdin.gets
	array = inp.split(' ')
	state = array[0].split(',')
	commands = array[1]

	puts state
	puts commands

	t = Taxi.new state[0].to_i, state[1].to_i, state[2]

	t.set_destination 1, 3

	commands.chars do |command| 
		case command
		when 'M' 
			t.move
			puts "moving forward"
		when 'L'
			t.move_left
			puts "Moving left"
		when 'R' 
#			t.move_right
		else

		end

	end
	puts t.location


	
#end
	