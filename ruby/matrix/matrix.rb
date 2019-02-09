class Matrix
  attr_reader :rows

  def initialize(input)
    @rows = parse(input)
  end

  def columns
    rows.transpose
  end

  private

  def parse(input)
    input.lines.map { |row| row.split.map(&:to_i) }
  end
end
