class Matrix
  attr_reader :matrix

  def initialize(input)
    @matrix = input
      .split("\n")
      .map { |row|
          row.split(" ").map { |item| item.to_i }
      }
  end

  def rows
    matrix
  end

  def columns
    matrix.transpose
  end
end
