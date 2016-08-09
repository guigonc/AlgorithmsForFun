class Fibonacci
  @@seq = [0, 1, 2]

  def self.sequence(n)
    calculate(n)
    @@seq.slice(1, n)
  end

  def self.calculate(n)
    return n if (n <= 2)
    @@seq[n] ||= calculate(n-2) + calculate(n-1)
  end

  def self.sum_even(n)
    sequence(n).select { |e| e.even? }.reduce(0,:+)
  end

  def self.last_smaller_than(value)
    n = 1
    calculate(n+=1) while (@@seq[n] < value)
    n-1
  end
end
