require "taxi"

describe Taxi do
    it 'move one position to north' do
      current_taxi = Taxi.new 1, 1,"N" #arrange
      current_taxi.move 
      expect(current_taxi.x).to eq(1)
      expect(current_taxi.y).to eq(2)
      expect(current_taxi.direction).to eq('N')
    end   
    
    it 'move one position to south' do
      current_taxi = Taxi.new 1, 1,"S" #arrange
      current_taxi.move 
      expect(current_taxi.x).to eq(1)
      expect(current_taxi.y).to eq(0)
      expect(current_taxi.direction).to eq('S')
    end
    
    it 'move one position to east' do
      current_taxi = Taxi.new 1, 1,"E" #arrange
      current_taxi.move 
      expect(current_taxi.x).to eq(2)
      expect(current_taxi.y).to eq(1)
      expect(current_taxi.direction).to eq('E')
    end
    
    it 'move one position to west' do
      current_taxi = Taxi.new 1, 1,"W" #arrange
      current_taxi.move 
      expect(current_taxi.x).to eq(0)
      expect(current_taxi.y).to eq(1)
      expect(current_taxi.direction).to eq('W')
    end

    it 'retrieves its location when asked' do
      current_taxi = Taxi.new 1, 1, "N"
      expect(current_taxi.location).to eq("1, 1, N")
    end

    it 'determines if it has reached its destination and confirms it' do
      current_taxi = Taxi.new 1, 1, "N"
      current_punter = Punter.new 1, 1, 1, 3
      current_taxi.assign_punter current_punter
#      current_taxi.set_destination 1, 3
      current_taxi.move
      current_taxi.move
      expect(current_taxi.location).to eq("1, 3, N")
    end
    
    context "moving left" do
      it 'is an intersection and go left and position is north' do
        current_taxi = Taxi.new 1, 1,"N" #arrange

        position = current_taxi.turn_left  #act
        current_taxi.move 
        expect(current_taxi.x).to eq(0)#assert
        expect(current_taxi.y).to eq(1)#assert
        expect(position).to eq("W") #assert
      end

      it 'is an intersection and go left and position is west' do
        current_taxi = Taxi.new 1, 1,"W" #arrange
        position = current_taxi.turn_left  #act
        current_taxi.move 
        expect(current_taxi.x).to eq(1)#assert
        expect(current_taxi.y).to eq(0)#assert
        expect(position).to eq("S") #assert
      end

      it 'is an intersection and go left and position is south' do
        current_taxi = Taxi.new 1, 1,"S" #arrange
        position = current_taxi.turn_left  #act
        current_taxi.move 
        expect(current_taxi.x).to eq(2) #assert
        expect(current_taxi.y).to eq(1) #assert 
        expect(position).to eq("E") #assert
      end
      it 'is an intersection and go left and position is east' do
        current_taxi = Taxi.new 1, 1,"E" #arrange
        position = current_taxi.turn_left  #act
        current_taxi.move 
        expect(current_taxi.x).to eq(1) #assert
        expect(current_taxi.y).to eq(2) #assert
       expect(position).to eq("N") #assert
      end
       

    end
    context "moving right" do
      it 'is an intersection and go right and position is north' do
        current_taxi = Taxi.new 1, 1,"N" #arrange

        position = current_taxi.turn_right  #act
        current_taxi.move 
        expect(current_taxi.x).to eq(2)
        expect(current_taxi.y).to eq(1)
        expect(position).to eq("E") #assert
      end

      it 'is an intersection and go right and position is east' do
        current_taxi = Taxi.new 1, 1,"E" #arrange
        position = current_taxi.turn_right  #act
        current_taxi.move 
        expect(current_taxi.x).to eq(1)
        expect(current_taxi.y).to eq(0)
        expect(current_taxi.direction).to eq('S')
        
      end
      it 'is an intersection and go right and position is south' do
        current_taxi = Taxi.new 1, 1,"S" #arrange
        position = current_taxi.turn_right  #act
        current_taxi.move 
        expect(current_taxi.x).to eq(0)
        expect(current_taxi.y).to eq(1)
        expect(current_taxi.direction).to eq('W')
      end

      it 'is an intersection and go right and position is west' do
        current_taxi = Taxi.new 1, 1,"W" #arrange
        position = current_taxi.turn_right  #act
        current_taxi.move 
        expect(current_taxi.x).to eq(1)#assert
        expect(current_taxi.y).to eq(2)#assert
        expect(position).to eq("N") #assert
      end
    end
    context "moving reverse" do
      it 'reverse one block facing north' do
        current_taxi = Taxi.new 1, 1,"N" #arrange
        current_taxi.reverse 
        expect(current_taxi.x).to eq(1)
        expect(current_taxi.y).to eq(0)#assert
      end

      it 'reverse one block facing south' do
        current_taxi = Taxi.new 1, 1,"S" #arrange
        current_taxi.reverse 
        expect(current_taxi.x).to eq(1)
        expect(current_taxi.y).to eq(2)#assert
      end

      it 'reverse one block facing west' do
        current_taxi = Taxi.new 1, 1,"W" #arrange
        current_taxi.reverse 
        expect(current_taxi.x).to eq(2)
        expect(current_taxi.y).to eq(1)#assert
      end

      it 'reverse one block facing east' do
        current_taxi = Taxi.new 1, 1,"E" #arrange
        current_taxi.reverse 
        expect(current_taxi.x).to eq(0)
        expect(current_taxi.y).to eq(1)#assert
      end
    end
end
