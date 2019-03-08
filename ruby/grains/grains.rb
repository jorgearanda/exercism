# Calculate the number of grains of wheat on a chessboard
# given that the number on each square doubles.
class Grains
  def self.square(num)
    raise ArgumentError if num < 1 || num > 64

    2**(num - 1)
  end

  def self.total
    2**64 - 1
  end
end
