require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("Hi, my name is Sophie!")
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if do |w|
       w.size < 2
    end.size
    # binding.pry
  end
end

# "This, well, is a sentence. This is too!! And so is this, I think? Woo..."