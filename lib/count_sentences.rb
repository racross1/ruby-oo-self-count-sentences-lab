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
    if self == " "
      return 0
    else
      words_arr = self.split(" ")
      new_words_arr = []
      words_arr.each do |word|
        if word.sentence? || word.question? || word.exclamation?
          new_words_arr << word 
        end 
      end 
    end 
      new_words_arr.count
    end 

       
 
 

end