class Collatz
  @@collatz_sequence_lengths = {1 => 1}

  def self.longest_sequence_start(limit)
    longest_sequence_start = 1
    longest_size = 1
    for i in 1..limit do
      sequence_size = calculate(i)
      if longest_size < sequence_size
        longest_sequence_start = i
        longest_size = sequence_size
      end
    end
    longest_sequence_start
  end

  private
  def self.calculate(initial_element)
    return 1 if initial_element == 1
    @@collatz_sequence_lengths[initial_element] ||= 1 + calculate(initial_element % 2 == 0 ? initial_element / 2 : 3 * initial_element + 1)
  end
end
