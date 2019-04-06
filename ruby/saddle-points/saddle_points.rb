# Matrix class that can identify saddle points
class Matrix
  attr_reader :rows

  def initialize(input)
    @rows = parse(input)
  end

  def saddle_points
    result = []
    rows.each_with_index.map do |row, row_idx|
      row.each_with_index.map do |item, col_idx|
        if rows[row_idx].max <= item && item <= columns[col_idx].min
          result.push([row_idx, col_idx])
        end
      end
    end
    result
  end

  def columns
    rows.transpose
  end

  def parse(input)
    input.lines.map { |row| row.split.map(&:to_i) }
  end
end
