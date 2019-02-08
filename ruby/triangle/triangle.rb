class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    matching_side_pairs == 3 && sides.max > 0
  end

  def isosceles?
    triangle_inequality? && matching_side_pairs >= 1
  end

  def scalene?
    triangle_inequality? && !isosceles?
  end

  private

  def triangle_inequality?
    sides.permutation(3).reduce(true) {
      |equal, perm|
      equal && (perm[0] + perm[1] >= perm[2])
    }
  end

  def matching_side_pairs
    sides.combination(2).reduce(0) {
      |sum, pair|
      sum + (pair[0] == pair[1] ? 1 : 0)
    }
  end
end
