# Calculate the number of grains of wheat on a chessboard
# given that the number on each square doubles.
class Grains
  def self.square(num)
    if num == 1
      1
    elsif num.between?(2, 64)
      square(num - 1) * 2
    else
      raise ArgumentError, 'The argument must be equal to or greater than one'
    end
  end

  def self.total
    (1..64).reduce { |sum, num| sum + square(num) }
  end
end
