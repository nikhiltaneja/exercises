class Binary
  attr_reader :decimal

  def initialize(input)
    @decimal = input
  end

  def reversed_integer_digits
    decimal.split("").collect {|digit| digit.to_i}.reverse
  end

  def to_decimal
    total = 0
    reversed_integer_digits.each_with_index do |digit, index|
      total += (digit * (2**index))
    end

    return total
  end
end
