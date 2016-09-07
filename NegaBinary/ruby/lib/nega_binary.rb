class NegaBinary
  attr_accessor :value
  def initialize(value)
    @value = value
  end

  def to_i
    result = 0
    length = @value.length-1
    for i in (length).downto(0)
      result += @value[i].to_i*(Math.pow(-2,length-i))
    end
    result
  end

  def ==(o)
    self.value == o.value
  end
end
