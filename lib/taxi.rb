class Taxi
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
    @xDest = 0
    @yDest = 0
    @reachedDestination = false
  end

  def is_arrived?
 # 	if @reachedDestination
 # 		puts "You have reached your Destination"
 # 	else
 # 		puts "You have not yet reached your destination"
 # 	end
  	@reachedDestination
  end

  def set_destination(xDestination, yDestination)
  	@xDest = xDestination
  	@yDest = yDestination
  	is_arrived?
  end


  def location
  	@x.to_s + ", " + @y.to_s + ", " + @direction
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
		@reachedDestination = true
	else
		@reachedDestination = false
	end

	if is_arrived?
		location
	end

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
  
  def move_right
    if @direction == "N" 
      @direction ="E"
    elsif @direction == "E"
      @direction="S"
    elsif @direction == "S"
      @direction="W"
    elsif @direction == "W"
      @direction="N"
    end
  end
   
end
