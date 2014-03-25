require "pig_latin/version"

module PigLatin
  def translate(input)

    word_array = input.split(' ')

    word_array.map! { |word|
      translated = ""
      if  word[0] == 'y'                              #if the first letter is a y
        translated = word[1..-1] + word[0] + 'ay'
      elsif !(/[aeiou]/.match(word[0]))               #elsif 1st letter is a consonant
        if !(/[aeiou]/.match(word[1]))                   #if starts with a cluster
          translated = word[2..-1] + word[0..1] + 'ay'
        else                                             #consonant then a vowel
          translated = word[1..-1] + word[0] + 'ay'
        end
      else                                             #elsif it's a vowel up front
        translated = word + 'way'
      end

      #format word for capitalization
      if (word.capitalize == word)
        translated = translated.capitalize!
      end

      translated
    }

    return word_array.join(' ')
  end
end
