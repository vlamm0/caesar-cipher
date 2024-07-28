alpha = "abcdefghijklmnopqrstuvwxyz".split("")
str = "what a string"
strArr = str.split("")
#p strArr

newStr = ""

strArr.each { |letter|
  if alpha.include?(letter)
    newIndex = alpha.index(letter) + 5
    if newIndex > 25
      newIndex -= 26
    end
    newStr += alpha[newIndex]
  else
    newStr += letter
  end

}
puts newStr