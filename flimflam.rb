# Author: Matthew Palomar
# Date: 11/6/15

# Description: Multiple of three give FLIM, Multiple of 5 give FLAM, 3 and 5 give FLIMFLAM

# Example from Terminal: 'ruby flimflam.rb'
/
1
2
FLIM
4
FLAM
.
.
.
97
98
FLIM
FLAM
/

def flimflam
array = Array(1..100)

array.each do |number|
    if number % 3 == 0 && number % 5 == 0
        puts 'FLIMFLAM'
    elsif number % 3 == 0
        puts 'FLIM'
    elsif number % 5 == 0
        puts 'FLAM'
    else
        puts number
    end
end
end

flimflam
