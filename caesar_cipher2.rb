# Author: Matthew Palomar
# Date: 11/11/15

# Description: Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string.
#              http://www.theodinproject.com/ruby-programming/building-blocks?ref=lnav

# Example from Terminal: 'ruby caeser_cipher2.rb'
/
    bmfy f Xywnsl!
/

def caesar_cipher(string, shift_factor)
    @string = string
    @shift_factor = shift_factor

    alphabet = (('a'..'z').to_a + ('A'..'Z').to_a).join
    i = @shift_factor % alphabet.length
    encryption = alphabet[i..-1] + alphabet[0...i]

    puts string.tr(alphabet, encryption)
end

caesar_cipher("What a String!", 5)
# bmfy f Xywnsl!