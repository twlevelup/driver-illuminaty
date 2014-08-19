class Taxi
  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
    @xDest = 0
    @yDest = 0
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

	if @x == @xDest && @y == @yDest
		
	end

	@x.to_s + "," + @y.to_s + "," + @direction
  end

  def location
  	@x.to_s + ", " + @y.to_s
  end

end
