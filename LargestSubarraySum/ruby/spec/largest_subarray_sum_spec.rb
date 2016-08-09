require 'largest_subarray_sum.rb'

RSpec.describe 'Globo exercise two'do
  describe 'should return largest subarray sum' do
    it 'for a array with one element' do
      expect(largest_subarray_sum_indexes([1])).to eq [0, 0]
    end

    it 'for a array with many positive element' do
      expect(largest_subarray_sum_indexes([1, 2, 3])).to eq [0, 2]
    end

    it 'for a array with negative element on edges' do
      expect(largest_subarray_sum_indexes([-1, 2, 3])).to eq [1, 2]
      expect(largest_subarray_sum_indexes([1, 2, -3])).to eq [0, 1]
    end

    it 'for a array with negative elements' do
      expect(largest_subarray_sum_indexes([2, -4, 6, 8, -10, 100, -6, 5])).to eq [2, 5]
    end

    it 'for a array with only negative elements' do
      expect(largest_subarray_sum_indexes([-2, -4, -6, -1, -10, -23])).to eq [3, 3]
    end

    it 'for a array with only two great sum elements' do
      expect(largest_subarray_sum_indexes([2, -4, 6, 8, -10, 100, -1000, 7, 8, -10, 100, -6, 5])).to eq [7, 10]
    end
  end
end
