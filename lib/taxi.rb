require_relative "punter"

class Taxi
  attr_accessor :x, :y, :direction, :vacant, :current_punter

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
    @vacant = true
    @currentPunter = nil
  end

  def assign_punter(current_punter)
    @current_punter = current_punter
  end

  def arrived_pickup?
    if @currentPunter != nil && 
      @x == currentPunter.xPickup && 
      @y == currentPunter.yPickup
      true
    else
      false
    end
  end

  def arrived_destination?
    if @currentPunter != nil && 
      @x == currentPunter.xDestination && 
      @y == currentPunter.yDestination
      true
    else
      false
    end
  end

  def location
  	@x.to_s + ", " + @y.to_s + ", " + @direction
  end

  def is_vacant?
    @vacant
  end

  def move
  	if @direction == 'N' 
      @y += 1
    elsif @direction == 'S' 
      @y -= 1
    elsif @direction == 'E' 
      @x += 1
    elsif @direction == 'W' 
      @x -= 1 
    end

    if arrived_pickup?
      vacant = false
      location
      puts "Arrived at pick up point. The taxi is now occupied. "
    end

    if arrived_destination?
      current_punter = nil
      vacant = true
      location
      puts "Arrived at destination. The taxi is now vacant. "
    end
  end

  def turn_left
    if @direction == 'N' 
	    @direction ='W'
	  elsif @direction == 'W'
      @direction='S'
    elsif @direction == 'S'
      @direction='E'
	  elsif @direction == 'E'
      @direction='N'
	 end
  end
  
  def turn_right
    if @direction == 'N' 
      @direction ='E'
    elsif @direction == 'E'
      @direction='S'
    elsif @direction == 'S'
      @direction='W'
    elsif @direction == 'W'
      @direction='N'
    end
  end

  def reverse
    if @direction == 'N' 
      @y -= 1
    elsif @direction == 'S'
      @y += 1
    elsif @direction == 'W'
      @x += 1
    elsif @direction == 'E'
      @x -= 1
    end
  end
   
end
