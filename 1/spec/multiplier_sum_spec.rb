require 'multiplier_sum'

RSpec.describe MultiplierSum do
  it 'shoud get the sum of 3 multiples below 3' do
    multiplier_sum = MultiplierSum.new(3)
    expect(multiplier_sum.get_sum_below(3)).to be 0
  end

  it 'shoud get the sum of 5 multiples below 6' do
    multiplier_sum = MultiplierSum.new(5)
    expect(multiplier_sum.get_sum_below(6)).to be 5
  end

  it 'shoud get the sum of all 3 and 5 multiples when limit is 6' do
    multiplier_sum = MultiplierSum.new(3, 5)
    expect(multiplier_sum.get_sum_below(6)).to be 8
  end

  it 'shoud get the sum of all 3 and 5 multiples when limit is 7' do
    multiplier_sum = MultiplierSum.new(3, 5)
    expect(multiplier_sum.get_sum_below(7)).to be 14
  end

  it 'shoud get the sum of all 3 and 5 multiples when limit is 10' do
    multiplier_sum = MultiplierSum.new(3, 5)
    expect(multiplier_sum.get_sum_below(10)).to be 23
  end

  it 'shoud get the sum of multiples of 3 and 5 when limit is 16' do
    multiplier_sum = MultiplierSum.new(3, 5)
    expect(multiplier_sum.get_sum_below(16)).to be 60
  end
end
