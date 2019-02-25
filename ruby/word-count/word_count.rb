class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = Hash.new(0)
    words.each_with_object(count) { |word| count[word] += 1 }
  end

  private

  def words
    phrase.downcase.scan(/\b[\w']+\b/)
  end
end
