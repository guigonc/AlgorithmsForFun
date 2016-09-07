class Integer
  def to_nb
    NegaBinary.new(negabinary_string(self))
  end

  private

  def negabinary_string(value)
    return '0' if value == 0
    return '1' if value == 1

    quocient = value / -2
    remainder = value % -2

    if (remainder == -1)
      quocient +=1
      remainder = 1
    end

    negabinary_string(quocient) + remainder.to_s
  end
end
