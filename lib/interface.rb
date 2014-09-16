class Interface

	def self.select_option
		puts "1. Add new taxi"
		puts "2. Assign a punter"
		puts "3. Run commands"
		puts "4. Check taxi status"
		puts "Please enter 1, 2, 3 or 4: "
		option = $stdin.gets.to_i
		option
	end

	def self.accept_taxi_states
		puts "Please enter new taxi's states, e.g. 1,1,N"
		states = $stdin.gets.split(',')
		states
	end

	def self.accept_punter_states
		puts "Please enter the punter's states, e.g. 1,1,2,2"
		states = $stdin.gets.split(',')
		states
	end

	def self.accept_taxi_index
		puts "Please enter the chosen taxi's index, e.g. 0"
		index = $stdin.gets.to_i
		index
	end

	def self.accept_commands
		puts "Please enter one or more commands: "
		commands = $stdin.gets
		commands
	end
end
	