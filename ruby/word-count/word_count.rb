class Phrase
  attr_reader :words

  def initialize(phrase)
    @words = extract_words(phrase)
  end

  def word_count
    count = Hash.new
    words.uniq.map { |word| count[word] = words.count(word) }
    count
  end

  private

  def extract_words(phrase)
    phrase.downcase.gsub(/\s'|'\s/, ' ').scan(/[\w']+/)
  end
end
