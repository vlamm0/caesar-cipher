ALPHA = "abcdefghijklmnopqrstuvwxyz".split("")

#works as an encryption function
def encrypt(str, shiftFactor)
  str.split("").reduce("") { |newStr, letter|
    if ALPHA.include?(letter)
      newIndex = ALPHA.index(letter) + shiftFactor
      if newIndex > 25
        newIndex -= 26
      end
      newStr += ALPHA[newIndex]
    else
      newStr += letter
    end
  }
end
puts "Enter in a message for encryption"
string = gets.chomp
puts "Enter a shift factor"
shift = gets.to_i
puts encrypt(string, shift)