# Transpose text as if it was an array of arrays
class Transpose
  def self.transpose(input)
    result = Array.new(row_size(input), '')
    width = 0
    rows(input).reverse_each do |row|
      width = max(width, row.size)
      split_row(row, width).each_with_index do |val, idx|
        result[idx] = val + result[idx]
      end
    end

    result.join("\n")
  end

  def self.max(first, second)
    first > second ? first : second
  end

  def self.split_row(row, width)
    row.ljust(width).chars
  end

  def self.row_size(input)
    rows(input).max_by(&:size) ? rows(input).max_by(&:size).size : 0
  end

  def self.rows(input)
    input.split("\n")
  end
end
