class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    legal_triangle? && sides.uniq.size == 1
  end

  def isosceles?
    legal_triangle? && sides.uniq.size <= 2
  end

  def scalene?
    legal_triangle? && !isosceles?
  end

  private

  def legal_triangle?
    at_least_one_positive_side? && !triangle_inequality_violations?
  end

  def at_least_one_positive_side?
    sides.max > 0
  end

  def triangle_inequality_violations?
    sides.permutation(3).to_a.any? {
      |perm|
      perm[0] + perm[1] < perm[2]
    }
  end
end
