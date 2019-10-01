class Word < ApplicationRecord

  def most_searched_word
    mostCommonWord = []
    self.each do |word|
      mostCommonWord << word[:word_name]
      arr = mostCommonWord.group_by(&:to_s).values.max_by(&:size).try(:first)
    end
    arr
  end

  
end 
