# Ruby Project 1: Caesar Cipher
# By: Rudolf Pham

def caesar_cipher(string, shift_factor)
	downcase = ('a'..'z').to_a
	upcase = ('A'..'Z').to_a
	
	new_string = string.split('').map do |letter|
		if downcase.include?(letter)
			index = downcase.index(letter) + shift_factor
			index -= 26 until index <= 25
			letter = downcase[index]
		elsif upcase.include?(letter)
			index = upcase.index(letter) + shift_factor
			index -= 26 until index <= 25
			letter = upcase[index]
		else
			letter = letter
		end
	end
	puts new_string.join('')
end

caesar_cipher("What a string!", 5)
caesar_cipher("Hello, my name is Rudolf!", 26)

