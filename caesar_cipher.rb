def caesar_cipher(text, shift = 0)
  
  lower_alphabet = Array('a'..'z')
  upper_alphabet = Array('A'..'Z')

  lowercase = Hash[lower_alphabet.zip(lower_alphabet.rotate(shift))]
  uppercase = Hash[upper_alphabet.zip(upper_alphabet.rotate(shift))]

  cipher = lowercase.merge(uppercase)

  text.chars.map { |char| cipher.fetch(char, char) }

end

puts "Enter text to encrypt:"

text = gets.chomp

puts "Enter an integer to shift the text:"

shift = gets.chomp.to_i

puts "Encrypted Message:"
puts caesar_cipher(text, shift).join

  