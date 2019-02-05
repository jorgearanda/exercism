class Pangram
  def self.pangram?(sentence)
    self.sorted(sentence) == self.alphabet
  end

  def self.sorted(sentence)
    sentence
      .downcase
      .scan(/[a-z]/)
      .uniq
      .sort
      .join
  end

  def self.alphabet
    'abcdefghijklmnopqrstuvwxyz'
  end
end
