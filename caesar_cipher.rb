# Author: Matthew Palomar
# Date: 11/11/15

# Description: Implement a caesar cipher that takes in a string and the shift factor
#              and then outputs the modified string.
#              http://www.theodinproject.com/ruby-programming/building-blocks?ref=lnav

# Example from Terminal: 'ruby caesar_cipher.rb'

/
  bmfy f Xywnsl!
  What a String!
/

class CaesarCipher
  def initialize(shift, alphabet = (("A".."Z").to_a + ("a".."z").to_a).join)
    i = shift % alphabet.size                       # index takes care of input outside of range
    @decrypt = alphabet                             # unaltered alphabet
    @encrypt = alphabet[i..-1] + alphabet[0...i]    # encrypted (shifted) alphabet
  end

  def encrypt(string)
    string.tr(@decrypt, @encrypt)                   # string.tr(x,y) string method replaces x with y
  end

  def decrypt(string)
    string.tr(@encrypt, @decrypt)                   # string.tr(y,x) string method replaces y with x
  end
end

key = CaesarCipher.new(5)

test_encryption = key.encrypt("What a String!")
puts test_encryption
# bmfy f Xywnsl!

test_decryption = key.decrypt(test_encryption)
puts test_decryption
# What a String!