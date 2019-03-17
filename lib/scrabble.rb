require 'pry'
class Scrabble

  SCORES = {
    1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
    2 => ['D', 'G'],
    3 => ['B', 'C', 'M', 'P'],
    4 => ['F', 'H', 'V', 'W', 'Y'],
    5 => ['K'],
    8 => ['J', 'X'],
    10 => ['Q', 'Z']
  }

  def score(word)
    total = 0
    score_word = word.upcase.split('')
    score_word.each do |letter|
      SCORES.each do |score, letters|
        total += score if letters.include?(letter)
      end
    end
    total
  end
end
