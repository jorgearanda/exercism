# Transpose text as if it was an array of arrays
class Transpose
  def self.transpose(input)
    rows(input)
      .map { |row| row.ljust(row_size(input)).split(//) }
      .transpose
      .map(&:join)
      .join("\n")
  end

  def self.row_size(input)
    rows(input).max_by(&:size).size
  end

  def self.rows(input)
    input.split("\n")
  end
end
