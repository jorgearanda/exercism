class Anagram
  attr_reader :target

  def initialize(target)
    @target = target
  end

  def match(words)
    words.filter { |word| anagram?(word) }
  end

  private

  def anagram?(word)
    word.downcase != target.downcase && sorted(word) == sorted(target)
  end

  def sorted(word)
    word.downcase.split('').sort
  end
end
