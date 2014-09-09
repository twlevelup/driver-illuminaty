class Interface

	def self.accept_commands
		puts "Please enter one or more commands: "
#		commands = $stdin.gets
		commands = "MLM"
		until commands_valid? commands do
			puts "Invalid commands. Please try again."
		end		
		commands
	end

	def self.commands_valid?(commands)
		valid = true
		commands.chars do |command|
			if (command != 'M') && (command != 'L') && 
				(command != 'R') && (command != 'S')
				valid = false
			end
		end
		valid
	end

end
	