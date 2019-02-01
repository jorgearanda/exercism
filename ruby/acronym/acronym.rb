class Acronym
  def self.abbreviate(phrase)
    phrase
      .split(/[\s-]/)  # spaces and dashes
      .collect { |word| word[0] }
      .join
      .upcase
  end
end
