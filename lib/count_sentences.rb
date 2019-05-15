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
    
    # split_array = self.split(/[\s.?!]/).reject!(&:empty?)
    # split_array.count
    
    new_array = self.split(/\b?\.\s|\?\s|\!\s/)
    new_array.count
  end
  
end