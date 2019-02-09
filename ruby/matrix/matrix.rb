class Matrix
  attr_reader :rows

  def initialize(input)
    @rows = input.lines.map { |row| parse(row) }
  end

  def columns
    rows.transpose
  end

  private

  def parse(row)
    row.split.map(&:to_i)
  end
end
