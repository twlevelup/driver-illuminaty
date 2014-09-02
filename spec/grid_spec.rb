require "grid"

describe Grid do
	it 'should be a 9 x 5 grid' do	
		current_grid = Grid.new 9, 5  #arrange
		expect(current_grid.x).to eq(9)#assert
		expect(current_grid.y).to eq(5)#assert
	end
	
	it 'should have a least a taxi' do	
		current_grid = Grid.new 9, 5  #arrange
		taxi = Taxi.new 1, 1,"N" #arrange
		current_grid.add_taxi taxi #act
		expect(current_grid.taxis.size).to eq(1)#assert
	end
	
	it 'should be outside the grid' do	
		current_grid = Grid.new 9, 5  #arrange
		taxi = Taxi.new 9, 5,"N" #arrange
		taxi.move #act
		current_grid.add_taxi taxi #act
		is_outside = current_grid.taxi_outside? taxi
		expect(is_outside).to eq(true)#assert
	end
	
	it 'should be inside the grid' do	
		current_grid = Grid.new 9, 5  #arrange
		taxi = Taxi.new 8, 4,"N" #arrange
		taxi.move #act
		current_grid.add_taxi taxi #act
		is_outside = current_grid.taxi_outside? taxi
		expect(is_outside).to eq(false)#assert
	end
	
	it 'should be inside the grid 2' do	
		current_grid = Grid.new 9, 5  #arrange
		taxi = Taxi.new 9, 5,"S" #arrange
		taxi.move #act
		current_grid.add_taxi taxi #act
		is_outside = current_grid.taxi_outside? taxi
		expect(is_outside).to eq(false)#assert
	end
	
	it 'should be inside the grid 2' do	
		current_grid = Grid.new 9, 5  #arrange
		taxi = Taxi.new 9, 5,"S" #arrange
		taxi.move #act
		current_grid.add_taxi taxi #act
		is_outside = current_grid.taxi_outside? taxi
		expect(is_outside).to eq(false)#assert
	end
	
	it 'should be ouside the grid with negatives values' do	
		current_grid = Grid.new 9, 5  #arrange
		taxi = Taxi.new 0, 0,"S" #arrange
		taxi.move #act
		current_grid.add_taxi taxi #act
		is_outside = current_grid.taxi_outside? taxi
		expect(is_outside).to eq(true)#assert
	end
end
