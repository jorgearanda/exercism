class Series
  attr_reader :base_string

  def initialize(base_string)
    @base_string = base_string
  end

  def slices(slice_size)
    if slice_size > base_string.length
      raise ArgumentError, "The slice size cannot be greater than the base string size"
    end

    base_string
      .split("")
      .each_cons(slice_size)
      .map(&:join)
  end
end
