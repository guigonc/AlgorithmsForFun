class MultiplierSum
  def initialize(*numbers)
     @numbers = numbers
  end

  def get_sum_below(limit)
    @numbers.map { |number| (number...limit).step(number).to_a }
            .reduce([]) { |all_multiples, number_multiples| all_multiples | number_multiples }
            .reduce(0, :+)
  end
end
