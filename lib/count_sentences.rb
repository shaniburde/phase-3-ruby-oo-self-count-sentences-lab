require 'pry'

class String

  def sentence?
      self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # self.split(/\.|\?|\!/).filter { |sentence| !sentence.empty? }.size
    # non-regular expression solution:
    sentences = 0
    # what punctuation we're checking for
    punctuation = [".", "?", "!"]
    # iterate over every character in the string
    self.chars.each.with_index do |char, index|
      # check if the character is a punctuation, and if the _next_ character is _not_ a punctuation
      if punctuation.include?(char) && !punctuation.include?(self[index + 1])
        sentences += 1
      end
    end
    sentences
  end
end