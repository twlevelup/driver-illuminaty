require "grid"

describe Grid do
	it 'should be a 9 x 5 grid' do	
		current_grid = Grid.new 9, 5  #arrange
		expect(current_grid.x).to eq(9)#assert
		expect(current_grid.y).to eq(5)#assert
	end
	
end
