class Taxi
	attr_accessor :x, :y, :direction

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
  end

  def location
  	@x.to_s + ", " + @y.to_s 
  end

  def move_left
    if @direction == "N" 
	    @direction ="W"
	  elsif @direction == "W"
      @direction="S"
    elsif @direction == "S"
      @direction="E"
	  elsif @direction == "E"
      @direction="N"
	end
		
  end 
end
