# frozen_string_literal: true

require 'bundler/setup'

# gems
require 'rubocop'

# CONSTANTS
ALPHA = 'abcdefghijklmnopqrstuvwxyz'.split('')

# determines if the new letter should be capitalized or not
def capitalization(old_letter, new_letter)
  if old_letter == old_letter.upcase
    new_letter.upcase
  else
    new_letter
  end
end

# works as an encryption function using users message and shift factor
def encrypt(str, shift_factor)
  str.split('').reduce('') do |new_str, letter|
    if ALPHA.include?(letter.downcase)
      new_index = ALPHA.index(letter.downcase) + shift_factor
      new_index -= 26 if new_index > 25
      new_str + capitalization(letter, ALPHA[new_index])
    else
      new_str + letter
    end
  end
end

# gets message (and shift factor) from user for encryption
def display_message
  puts 'Enter in a message for encryption'
  string = gets.chomp
  puts 'Enter a shift factor'
  shift = gets.to_i
  puts '\n\n***EnCrYpTeD mEsSaGe***'
  puts encrypt(string, shift)
end

# main code
display_message
