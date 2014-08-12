class Taxi
  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move
	if @direction == "N"
	  @y += 1
	elsif @direction == "S"
	  @y -= 1
	elsif @direction == "E"
	  @x += 1
	elsif @direction == "W"
	  @x -= 1 
	end
	@x.to_s + "," + @y.to_s + "," + @direction
  end
end
