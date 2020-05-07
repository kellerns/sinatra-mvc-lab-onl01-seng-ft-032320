class PigLatinizer
  attr_accessor :piglatin_phrase

  def pig_latin_word(word)
    if word.downcase.index(/[aeoui]/) == 0
      word + "way"
    else
      first_vowel = word.index(/aeoui/)
      first_letters = word.slice!(0..first_vowel-1)

      word + first_letters + "ay"
    end
  end

  def pig_latin_phrase(phrase)
    word_array = phrase.split(" ")
    word_array.collect do |word|
      pig_latin_word(word)
    end
    word_array.join(" ")
  end
end
