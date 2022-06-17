require_relative './../my_list'

RSpec.describe 'MyList' do
  context 'all' do
    it 'elements less than 5' do
      list = MyList.new(1, 2, 3, 4)
      result = list.all? { |e| e < 5 }
      expect(result).to eq(true)
    end
    it 'elements greather than 5' do
      list = MyList.new(1, 2, 3, 4)
      result = list.all? { |e| e > 5 }
      expect(result).to eq(false)
    end
  end
  context 'any' do
    it 'elements equal 2' do
      list = MyList.new(1, 2, 3, 4)
      result = list.any? { |e| e == 2 }
      expect(result).to eq(true)
    end
    it 'elements equal 5' do
      list = MyList.new(1, 2, 3, 4)
      result = list.any? { |e| e == 5 }
      expect(result).to eq(false)
    end
  end
  context 'filter' do
    it 'filter even' do
      list = MyList.new(1, 2, 3, 4)
      result = list.filter(&:even?)
      expect(result).to eq([2, 4])
    end
  end
end
