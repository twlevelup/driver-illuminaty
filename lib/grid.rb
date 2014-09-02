class Grid
	attr_accessor :x, :y, :taxis
	
	def initialize(x, y)
		@x = x
		@y = y
		@taxis = []
	end
	
	def add_taxi(taxi)
		@taxis << taxi
	end
	
	def taxi_outside?(taxi)
		if (taxi.x > @x) || (taxi.y > @y) || (taxi.x < 0) || (taxi.y < 0)
			true
		else
			false
		end
	end
	
end
