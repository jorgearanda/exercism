class Squares
  attr_reader :range_end

  def initialize(range_end)
    @range_end = range_end
  end

  def square_of_sum
    (1..range_end).reduce(:+) ** 2
  end

  def sum_of_squares
    (1..range_end).reduce { |sum, n| sum + n ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
