module Math
  def self.pow(base, exponent)
    power = 1.0
    exponent.times { power *= base } if exponent > 0
    (-1 * exponent).times { power /= base } if exponent < 0
    power
  end
end
