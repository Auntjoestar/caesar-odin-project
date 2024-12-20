class String
  def alpha?
    !!match(/^[[:alpha:]]+$/)
  end
end

UPPERCASE_A_ASCII = 65
LOWERCASE_A_ASCII = 97
ENGLISH_ALPHABET_LETTERS = 26

def caesar_cipher(plain_text, key)
  cypher_letters = plain_text.split("").map do |letter| 
    unless letter.alpha?
      letter
    else
      if letter == letter.upcase
      ((((letter.ord + key) - UPPERCASE_A_ASCII) % ENGLISH_ALPHABET_LETTERS) + UPPERCASE_A_ASCII).chr
      elsif letter == letter.downcase 
      ((((letter.ord + key) - LOWERCASE_A_ASCII) % ENGLISH_ALPHABET_LETTERS) + LOWERCASE_A_ASCII).chr
      end
    end 
  end
  p cypher_letters.join
end

caesar_cipher("What a string!", 5)