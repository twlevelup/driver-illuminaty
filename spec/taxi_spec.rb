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
      current_taxi.location

    end

end
