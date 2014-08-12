require "taxi"

describe Taxi do
    it 'move one position to north' do
      current_taxi = Taxi.new 1, 1,"N" #arrange
      position = current_taxi.move  #act
      expect(position).to eq("1,2,N") #assert
    end
    
    it 'move one position to south' do
      current_taxi = Taxi.new 1, 1,"S" #arrange
      position = current_taxi.move  #act
      expect(position).to eq("1,0,S") #assert
    end
    
    it 'move one position to east' do
      current_taxi = Taxi.new 1, 1,"E" #arrange
      position = current_taxi.move  #act
      expect(position).to eq("2,1,E") #assert
    end
    
    it 'move one position to west' do
      current_taxi = Taxi.new 1, 1,"W" #arrange
      position = current_taxi.move  #act
      expect(position).to eq("0,1,W") #assert
    end

end
