class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = Hash.new(0)
    words.map { |word| count[word] += 1 }
    count
  end

  private

  def words
    phrase.downcase.gsub(/\s'|'\s/, ' ').scan(/[\w']+/)
  end
end
