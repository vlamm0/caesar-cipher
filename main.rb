ALPHA = "abcdefghijklmnopqrstuvwxyz".split("")


# determines if the new letter should be capitalized or not
def capitalization(oldLetter, newLetter)
  if oldLetter == oldLetter.upcase
    newLetter.upcase
  else
    newLetter
  end
end


# works as an encryption function using users message and shift factor
def encrypt(str, shiftFactor)
  str.split("").reduce("") { |newStr, letter|
    if ALPHA.include?(letter.downcase)
      newIndex = ALPHA.index(letter.downcase) + shiftFactor
      if newIndex > 25
        newIndex -= 26
        
      end
      newStr += capitalization(letter, ALPHA[newIndex])
    else
      newStr += letter
    end
  }
end

# gets message (and shift factor) from user for encryption
def getMessage()
  puts "Enter in a message for encryption"
  string = gets.chomp
  puts "Enter a shift factor"
  shift = gets.to_i
  puts "\n\n***EnCrYpTeD mEsSaGe***"
  puts encrypt(string, shift)
end

# main code
getMessage()