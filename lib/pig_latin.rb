require "pig_latin/version"

module PigLatin
  def self.translate(input)

    word_array = input.split(' ')

    word_array.map! { |word|
      translated = ""

      #if it starts or ends with punctuation, trim for later
      opening_mark = ''
      closing_mark = ''

      #opening mark
      if (word.match /^[\(\).!?,;]/)
        opening_mark = word[0]
        word = word[1..-1]
      end

      #closing mark
      if (word.match /[.!?,;]$/)
        closing_mark = word[-1]
        word = word[0..-2]
      end

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

      #add trimmed characters
      translated = opening_mark + translated + closing_mark

      translated
    }

    return word_array.join(' ')
  end
end
