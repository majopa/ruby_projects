# Author: Matthew Palomar
# Date: 11/5/15

# Description:  By considering the terms in the Fibonacci sequence whose values do not exceed four million,
#               find the sum of the even-valued terms.
#               https://projecteuler.net/problem=2

# Example from Terminal: 'ruby even_of_fibonacci.rb'

total = 0
previous = 0
i = 1

while i <= 4000000
    total +=i if (i % 2 == 0)
    i, previous = previous, previous + i
end

puts total

