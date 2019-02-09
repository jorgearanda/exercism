class Matrix
  attr_reader :rows

  def initialize(input)
    @rows = input
      .lines
      .map { |row| row.split.map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
