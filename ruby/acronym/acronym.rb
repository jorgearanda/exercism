class Acronym
  def self.abbreviate(phrase)
    phrase
      .scan(/\b\w+\b/)
      .collect { |word| word[0] }
      .join
      .upcase
  end
end
