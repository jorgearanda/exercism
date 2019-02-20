class SumOfMultiples
  attr_reader :factors

  def initialize(*factors)
    @factors = factors
  end

  def to(target)
    (1..target - 1).reduce(0) { |sum, n| sum + (is_multiple(n) ? n : 0) }
  end

  private

  def is_multiple(n)
    factors.any? { |factor| n % factor == 0 }
  end
end
