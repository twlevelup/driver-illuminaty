require "taxi"

describe Taxi do
    it 'move one position to north' do
      t = Taxi.new 1, 1,"N" #arrange
      position = t.move  #act
      expect(position).to eq("1,2,N") #assert
    end
    
    it 'move one position to south' do
      t = Taxi.new 1, 1,"S" #arrange
      position = t.move  #act
      expect(position).to eq("1,0,S") #assert
    end
    
    it 'move one position to east' do
      t = Taxi.new 1, 1,"E" #arrange
      position = t.move  #act
      expect(position).to eq("2,1,E") #assert
    end
    
    it 'move one position to west' do
      t = Taxi.new 1, 1,"W" #arrange
      position = t.move  #act
      expect(position).to eq("0,1,k") #assert
    end

end
